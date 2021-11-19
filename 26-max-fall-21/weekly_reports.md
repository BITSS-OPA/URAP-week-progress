# Weekly reports

## Week 13 (Nov. 14 - Nov. 20)

- [ ] Finish translation of 01
  - [ ] finish unit tests
  - [ ] translate remaining sections
- [ ] Begin translation of 03

I worked III hours this week

---

## Week 12 (Nov. 7 - Nov. 13)

- [ ] Finish translation of 01
  - [ ] finish unit tests---use simple ones vs ones from `testthat`
  - [x] fully reformat for best readability
  - some follow-ups noted below
- [ ] Begin translation of 03

## Notes

- why is Bhutan included in `South-East Asia` and Northern Africa in `Other Asian`?
- authorized spouse imputation does not seem to accomplish anything?

I worked 9 hours this week

---

## Week 11 (Oct. 31 - Nov. 6)

- [ ] Finish translation of 01
  - [x] copied over/adapting Gabriel's CPS harmonization code
    - some sections still incomplete
  - [ ] create R-oriented unit tests
    - `testthat` package is most popular for unit testing in R, but difficult to get started
    - https://r-pkgs.org/tests.html

I worked 8 hours this week

---

## Week 10 (Oct. 24 - Oct. 30)

- [x] Review and summarize 07a, 07b
  - 07a already reviewed by Gabriel!
  - [x] update input files on README
  - [x] study new Stata 17 tables, `collect` command, etc.
- [x] Begin translation to R, starting with 01
  - [x] learn and use `ipumsr` to import data

## Notes

- `01_cleaning.do`, line 256: why are we using two new variables `spmgeoadj` and `spmfamunit`?

I worked 10 hours this week

---

## Week 9 (Oct. 17 - Oct. 23)

I had to move out this week, and I also had a midterm---please count this as a token week!

---

## Week 8 (Oct. 10 - Oct. 16)

- [ ] Review and summarize 07a, 07b
  - 07a: cleans DoL data on actual unemployment compensation
    - total amount of people who received compensation and total $ distributed for each state, month, year group
  - try to understand visualizations in 07b
    - from James' email, we're looking at the tables comparing simulated vs actual unemployment compensation
    - [ ] study new Stata 17 tables, `collect` command, etc.
    - should I wait to study the other sections?
  - [ ] update input files
- [ ] Begin translation to R if time, starting with 01
  - [ ] learn and use `ipumsr` in order to take advantage of metadata
- Watched `ipumsr` webinar
  - beta testing for API before end of 2021---reach out to become tester
  - public launch of API in 2022

I worked 5 hours this week

---

## Week 7 (Oct. 3 - Oct. 9)

- [x] Summarize code for 05a, 05b
  - done after making unit tests functional, and no errors -> code did not get broken!
- [x] Make 02, 04, 05 unit tests functional
  - also fixed 03 unit tests
- [ ] Begin translation to R if time

I worked 6 hours this week

---

## Week 6 (Sep. 26 - Oct. 2)

- [x] Work on slide deployment
  - minimal example created using GitHub Pages
- [x] Meet with Gabriel for Stata review

I worked 7 hours this week

---

## Week 5 (Sep. 19 - Sep. 25)

- [x] Redevelop unit tests for 02, ~~03~~, 04, 05
  - 03 unit tests were already updated
  - 02 runs into an error in the imputation (starting from line 261) about 45 min into the calculation. consequently, the unit tests in the 04, 05, and the second half of 02 are not yet functional
    - is this a quick fix?
- [ ] Review 06a, 06b
  - updated README for 06a input, intermediate, output files. when can we get these files?
- [x] add data dictionary for 05a `student_exclusions.dta`

I worked 8 hours this week

---

## Week 4 (Sep. 12 - Sep. 18)

- [x] Review 05a
  - made eligibility condition comments clearer and more comprehensive
  - updated README
  - page 142 of DoL's [Comparison of State Unemployment Insurance Laws](https://oui.doleta.gov/unemploy/pdf/uilawcompar/2020/complete.pdf) is the original source used to create `student_exclusions.csv` and provides some insight on the meaning of each variable
    - consider small data dictionary for `student_exclusions.csv` in the future
- [x] Review 05b
  - created eligibility condition comments
  - created unit tests
- [x] Review 06a
  - does not run: we are missing `state_thresholds_*.csv` files for `jan_2019`, `jul_2019`, `jan_2020`, `jul_2020`
- [ ] Review 06b

I worked 9 hours this week

---

## Week 3 (Sep. 5 - Sep. 11)

- Reviewed model description in README
- Ran through:
  - 00 (beginning only)
  - 01
  - 02
  - 03
  - 04
  - 05a (fixed errors)
- Began translation

I worked 7 hours this week

---

## Week 2 (Aug. 29 - Sep. 4)

- [x] Review 04-05a code files
  - [x] Revise section description and annotations if needed
  - [ ] Explain for loop better if needed


- run 00 through 04 and document issues
  - 01 halts on line 512: `variable serial not found` `r(111)`
  - 02 halts on line 228: `invalid syntax` `r(198)`
  - unsure why these issues arise: re-executing script starting at these lines causes no issues
  - various unit tests fail (will document later)

I worked 7 hours this week

---

## Week 1 (Aug. 22 - Aug 28)
- [x] Review 01-03 code files
- [x] Read CPS IPUMS description
- [x] Read first few pages of BIFYA google doc

I worked 2 hours this week

### Notes

- `labutil` and `gtools` have issues installing while on a Berkeley network, e.g. eduroam, CalVisitor
