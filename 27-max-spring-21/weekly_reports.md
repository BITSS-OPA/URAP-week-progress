# Spring 2022 Weekly Reports

# Week 4 (Jan. 23 - Jan. 29)

- [ ] Diagnose discrepancy between Stata and R logistic predictions
- [ ] Research into `data.table` and `dtplyr`
  - [ ] Meeting with Joel!
- [ ] Begin translating `05`

---

# Week 3 (Jan. 16 - Jan. 22)

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
