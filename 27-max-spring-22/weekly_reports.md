# Spring 2022 Weekly Reports

## Week 5 (Jan. 30 - Feb. 5)

- [ ] Continue testing logistic regression

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
- 2,970,523 observations and 162 variables in R versus 2,970,523 observations and 162 variables in Stata. Discrepancy is due to R lacking 3 merge columns, and Stata lacking `schlcoll_bperiod_miss` columns.

I worked 10 hours this week

---

## Week 1 (Jan. 2 - Jan. 8)

- [x] Translate `03_linking.do`

I worked 9 hours this week
