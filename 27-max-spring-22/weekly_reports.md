# Spring 2022 Weekly Reports

# Week 13 (Mar. 27 - Apr. 2)

- [ ] Finish translation of `22`
  - [x] Complete sections 2-7
  - [x] Bug testing---not yet complete
- [ ] Work on `07c` if time---be sure to skip the table labelling/formatting sections

## Notes

- ideas for article about translating from Stata to R
  - snippets!
  - thinking about code holistically
  - R being vector-based and how to efficiently use `tidyverse`, e.g. `across()`
  - working around one dataset in memory vs. multiple datasets
  - variable types: whether to store as 1/0 or TRUE/FALSE, factors, double/integer
  - variable values/labels, and their relative absence in R compared to Stata
  - decimal point precision
  - designing clever equivalency tests
- `memory.limit()`? Is there an actual article explaining the consequences of allocating more memory than is physically available?

I worked 10 hours this week

---

# Week 12 (Mar. 20 - Mar. 26)

- Spring break!

---

# Week 11 (Mar. 13 - Mar. 19)

- 7 hours of credit from Week 9 were used
- [x] Work on translation of `22`

### Notes

- Will bug fixing be done based on version in Beta-Stata, or version in main?

I worked 3 hours this week

---

# Week 10 (Mar. 6 - Mar. 12)

- 10 hours of credit from Week 9 were used

---

## Week 9 (Feb. 27 - Mar. 5)

- [x] Translate `05a`
- [x] Translate `05b`
- [x] Translate `05c`
- [x] Translate `06`
- [x] Translate `07b`

I worked 27 hours this week. Most hours were from Saturday, Feb. 26 to Tuesday, Mar. 1

---

## Week 8 (Feb. 20 - Feb. 26)

- [x] Finalize translation of `04`

I worked 11 hours this week

---

## Week 7 (Feb. 13 - Feb. 19)

- Took a midterm token this week
  - Wrote up plans/ideas for next week below
- Will still meet with new URAPs this Wednesday at 3pm!

### Notes

Tasks:
- Make a write-up about the process for comparing regression estimates between Stata and R
- Start translating `05`
  - Use both Stata output from `04` as well as output from `04_weight-adjustments.R`
  - Should verify that results are identical

Dealing with perfect separation:
- First option is to exclude from whole dataset `cps_link` the groups that are separable, e.g. `AGE_GROUP_HA == 1 & EMPSTAT_G == 36`. Since each specific group is not necessarily separable across all year-month combinations, this will mean R has fewer linked probabilities than Stata.
- Second option is to record (or possibly test for?) separability for each year-month combination. This will give the same amount of linked probabilities for R and Stata, so if testing is easy to implement then this is the better option.

The 5 observations in `jan19` for `AGE_GROUP_HA == 1 & EMPSTAT_G == 36` have essentially 0 predicted values. This is in contrast to Stata returning just `NA` for those values. Stata will return `NA` for perfectly separable groups regardless of whether an observation has `LINK* == 1` or `LINK* == 0`. If in R the predicted values for separable groups are always approximately zero, then we can simply filter out those observations within each loop. This means there is no need to identify perfect separation before we run the regression, which would be necessary if the second option was used.

Update: After testing, it seems like the predictions for observations in perfectly separable groups are much closer to zero than other values! Plotting a histogram of predictions is useful for visually inspecting them. If we could set the near-zero predicted values to NA after the regression but before binding them to the table, this could be a clever fix.

Once regressions are run and predictions are obtained, make sure to test for equality between Stata and R in different ways:
  - Maximum absolute difference
  - Usual summary stats: mean, SD, etc.

---

## Week 6 (Feb. 6 - Feb. 12)

- [x] Continue testing
  - [x] Create test for perfect separation
  - [x] Create test for equality of coefficient estimates

### Notes

Thoughts on comparing equality of coefficient estimates:
1. Figure out decimal point precision of estimates in Stata vs R?
2. In `logit-test.do`, output estimates to `.csv`, load into R, and do comparison
  - Test for logical equality is best assuming precision is identical, but maybe other test(s) have to be used
3. If discrepancy comes from perfectly separable observations, then filter those out and, re-run regression and compare
 - Otherwise, have to see where discrepancy comes from and deal with it

Methodology:
1. Filter out `EMPSTAT_G == 1` because armed forces all have `WTFINL == 0`, which is problematic for regression
  - Their `LINK`/`LINK_ALT`/`LINK_POV` value will be set to intercept
2. For all interacted groups, see how many `YEAR`, `MONTH`, `INTERACTION_VAR1`, `INTERACTION_VAR2`, `LINK*` combinations have group count of 0 (utilize `count()`'s `.drop` argument')
  - After `count()`, make sure to filter out groups that actually should have count of zero, e.g. observations from Sep. 2021 onwards
3. Decide what predicted probability will be assigned to zero count groups
  - If observation's value for `LINK*` is `FALSE`, then probability is just `NA` since predictions are only made if `LINK* == 1`
  - If `LINK*` is `TRUE`, first see what Stata puts as prediction and then copy that somehow---not sure how to do that yet
4. Run the around 72 regressions
  - Figure out how much memory each result requires---possible to store them all?
  - Then figure out how to bind results to table
5. Copy rest of `04` code to produce final table

I worked 10 hours this week

---

## Week 5 (Jan. 30 - Feb. 5)

- [x] Continue testing logistic regression
  - [x] Determine why `EMPSTAT_G == 36` interacted with `AGE_GROUP_HA` estimates differ from Stata
    - Issue is with perfect separation!

I worked 10 hours this week

---

## Week 4 (Jan. 23 - Jan. 29)

- [x] Research discrepancy between Stata and R logistic predictions
  - [x] Look into issue with weights and complete testing
  - `svyglm()` from `survey` package allows for `weights` argument that is equivalent to Stata's `pweights`/`pw`. However, issue arises because design matrix has weights of 0 for every observation with `EMPSTAT_G == 1` (armed forces). This level of `EMPSTAT_G` is excluded when fitting, so when using `predict()` there is a matrix non-conformability issue. Can be solved by filtering out armed forces individuals before fitting. Their predicted value for `LINK` is just the constant, which matches Stata calculations, so this is fine as long as predicted `LINK` values are appropriately matched at the end.
- [x] Research into `data.table` and `dtplyr`
  - [x] Meeting with Joel!
- [ ] Begin translating `05`

I worked 9 hours this week

## Notes

- September to December CPS data is now available, ask BIFYA to update README?

---

## Week 3 (Jan. 16 - Jan. 22)

- [ ] Translate `04_weight-adjustments.do`
  - [x] Attempt to systematically compare predictions from Stata and R

I worked 10 hours this week

---

## Week 2 (Jan. 9 - Jan. 15)

- [x] Update `01_cleaning.R`
- [x] Finalize and test out `03_linking.do`

### Notes:

- `01_cleaning.do`, line 420: Should `household_adults` be generated using `child` or `children`? Currently uses former, which means that value for `household_adults` differs between individuals in household.
- `03_linking.do`, line 373: Should `schlcoll_bperiod` also be included?
- 2,970,523 observations and 163 variables in R versus 2,970,523 observations and 165 variables in Stata. Discrepancy is due to R lacking 3 merge columns, and Stata lacking `schlcoll_bperiod_miss` columns.

I worked 10 hours this week

---

## Week 1 (Jan. 2 - Jan. 8)

- [x] Translate `03_linking.do`

I worked 9 hours this week
