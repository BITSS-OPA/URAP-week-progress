# Weekly reports of progress

## Week 1 (5/18)

- Read the ACRE guidelines for computational reproducibility  
  - read chapters 1-3 in depth, read chapter 4 and skimmed the rest
- Fix any typos or glaring errors in the github repo: https://github.com/BITSS/ACRE/  
  - corrected typos in introduction, chapter 1, 2, 3
  - didn't correct typos in chapters that are still under construction
- Comment on any sections that are confusing or that you don't understand.    
  - (note for myself) shortcut to comment out text in Rmd: shift + command + C
  - added comment in scope: I don't completely understand "preferred specification"  
- Clean the URL entries using regular expressions.     
  - first tried to learn more about regular expressions by reading [this chapter on strings](https://r4ds.had.co.nz/strings.html)
  - learned about [DOI Basics](https://support.datacite.org/docs/doi-basics) - prefix starting with '10.' and then a 4+ digit number, then a suffix which can be any string
    - this led me to [this blog post on using regular expressions to match DOIs](https://www.crossref.org/blog/dois-and-matching-regular-expressions/), which had a regular expression `/^10.\d{4,9}/[-._;()/:A-Z0-9]+$/i` that matches 74.4M of 74.9M DOIs; modified to work in R: `regex("10\\.\\d{4,9}/[-._;()/:a-z0-9]+$", ignore_case=T)`
  - was able to clean by first isolating DOI, then splitting string by "." and then combined the separated strings again to remove the extra periods to get all DOIs in the format *10.xxxx/suffix*
    - I think *one possible concern* is that this assumes that the suffix starts with some characters, followed by a ".", then some other digits (e.g. aer.10052204, aer.20101199); I don't think this would work if the suffix didn't contain a "." at all. In theory a DOI's suffix could be any string, but the suffixes in the survey responses were all similar because they were all from the American Economic Review.
  - **update: I think it's important to keep the suffix as is,** i.e. 10.1257/aer.100.5.2205 and not 10.1257/aer.10052205. I removed my work starting from the step that splits the string by ".".
- Watched [this introduction to bookdown video](https://www.youtube.com/watch?v=dVqVscgwSpw)
- Update report of progress (this file) by the end of the week.  

*added during week 2:* I worked 30 hours during Week 1.

## Week 2 (5/26)  

- Read Survey 1 and 2.
  - I read through both surveys in Preview and in Edit modes, S1 was fairly quick but S2 took a lot longer; I also looked at the "Survey Flow" tab which helped me visualize the longer survey.
- Pilot report (`02_report_on_pilot.Rmd`):
  - Specific fixes
    - Sort rows of tables
    - Add percentages and totals
  - I ran into an issue with setting the working directory when trying to knit the Rmd file, so I created a branch to work on the changes until I could resolve the issue and see my changes. For the percentages, I used summarize() to keep the column of counts for each response and created a separate column with the percentages for each response. Using the formattable package, I was able to convert the proportions to percentages and add a percentage symbol to the column values.  

I did not get to adding totals, sorting rows, or paper-level data this week.

  - Clean paper-level data
  - Add tables
- Update report of progress (this file) by the end of the week.  
- Add number of hours worked during the week.

I worked 20 hours during Week 2.

## Week 3 (6/1)

- resolved error with knitting: updated all packages
- Continue with tasks from week 2: formatting.   
  - sorted rows for tables 5.9, 5.10, 8.6 by creating vector of levels of CR and using arrange(match(vector))
  - total is the same (52) for all one-way freq tables so I used nrow(df_items_tidy) for the total and used dplyr's `add_row` to add a row with the total to the existing dataframe.
-  Work on automated report for instructors:
  - Add claim level tables and summary.  
    - I created a table for one claim, but still need to finish adding footnotes to incorporate the locations from question 6.9. I think I can clean up this section using regular expressions
    - Also need to figure out how to create similar tables for each claim (I think I should be able to do this by iterating through `1:df$n_claims[student_id]` for one student and replacing column names).
    - Did not get to adding a summary - *can we go over what the summary should look like again?*
-  Paper-level clean data + basic descriptives.   
  - focused on instructor report instead; will circle back to paper level database in the future.

I worked 28 hours during Week 3.  

## Week 4 (6/8)

- Finish table formatting in `02_report_on_pilot.Rmd`:
  - Added percentages for all tables except for the two-way frequency tables (pre-specify and diagram/depth)
  - Corrected sorting, replaced `NA`s with 0 in diagram/depth table, and changed 0/1 response to No/Yes for Improvements table
  - hide warnings in options: added `message = FALSE` to the top of code chunks
- Instructor report (`03_report_card_PS1.Rmd`):
  - added summary response from 6.1
  - added row with location of estimates
  - [explain a bit about function here]
- ACRE Guidelines: convert tables to html
  - `02-scope.Rmd` table: it looks like kableExtra only allows you to merge cells across rows (vertically) and not across columns; is trickier because only some cells are merged. You can add headers on top of each other and specify column span, according to [this page](http://haozhu233.github.io/kableExtra/awesome_table_in_html.html), so you could recreate the table entirely from headers, but I think there's less control over formatting the cells this way.
    - *bug that breaks itemization when building book: when knitting 02, the table at the bottom just shows up as HTML. Are these issues related, or two separate issues?*
  - `03-assess.Rmd`:
    - converted tables on raw data info, analysis data info, code files info and adding rows to code spreadsheet; left the original tables until the tables are finalized. I ran into 2 issues with these tables: 1) for the raw data table column `directory`, the cell names with backslashes don't display correctly when the dataframe `raw_data_info` is converted using kable. 2) when knitting the document, I was unable to knit when using pipes (could not find function "%>%")
    - did not get to tables on Levels of Computational Reproducibility.


I worked 32 hours during Week 4.

## Week 5 (6/15)

- ACRE Guidelines: finish converting tables to HTML
  - `03-assess.Rmd`:
    - solved issues from last week: 1) change backslashes for relative file path to forward slashes 2) load tidy verse in code chunk at the top of the document
      - added horizontal line to levels of computational reproducibility tables: [stack overflow post](https://stackoverflow.com/questions/53655983/row-spec-function-from-kableextra-does-not-create-a-horizontal-line-in-html-ou)
    - 2.3 code files table cutting off primary_type column: added scroll bar because scaling the table to page width using `full_width = TRUE` wasn't working
  - `04-improve.Rmd`:
    - added table under "Reporting results"
- Contributions: understand source code for adding contributions to R for Data Science (R4DS) welcome page
  - this script [(contributors.R)](https://github.com/hadley/r4ds/blob/master/contributors.R) is used to generate this csv file [(contributors.csv)](https://github.com/hadley/r4ds/blob/master/contributors.csv):
    -  using the [gh package](https://cran.r-project.org/web/packages/gh/gh.pdf), you can retrieve an R list of information on contributors to a GitHub repository as JSON
    - then, pull relevant information (login, number of contributions) from the list
    - the R script reads in a csv, which I believe has information on all previous contributors, including names and blogs, and also pulls this information for all new contributors using the gh package again
    - finally, the information (login, n contributions, name, blog) for old and new contributors is combined into a tibble and saved to a csv file
  - [notes on .Rmd file for R4DS welcome page](https://github.com/hadley/r4ds/blob/master/index.rmd):
    - the [glue package](https://glue.tidyverse.org/) embeds R expressions in {} which are evaluated and inserted into the argument string
    - uses `glue` and the `login` column from contributors.csv to create a link to each contributor's github profile
  - *Applying this to the ACRE Guidelines:* a similar process could be used for contributions to the repo for the guidelines, but would probably have a separate process for the contributions from reproducers.

I worked 28 hours during Week 5.

## Week 6 (6/22)  

- Kable output bug: updating packages resolved some errors but not all, Fernando resolved issue in `_bookdown.yml` file
- Cover page: edited `index.Rmd`
  - included link to contributors chapter, added BITSS logo below title and added link to BITSS website
- added scroll bar for robustness table; added footnotes for CRR and CRA on LCR tables
- check links
  - in `04-improve.Rmd`: removed "ADD LINK" for ACRE database, ACRE procedure to report coding errors, Assessment and Improvement Survey
  - corrected _tips for communication_ link to chapter 5

I worked 30 hours during Week 6.

## Week 7 (6/29)  

- figure out how to publish the slides in HTML format
  - Two ways to create a static site with the slides: using GitHub pages or Netlify (free service for one individual, have to pay for teams)
    - __GitHub pages__: can make site using private repo with a Pro account, or make ACRE_analysis repo public?
      - to publish slides like [this example](https://jrosen48.github.io/data-science-dilemmas-presentation/#1): create a new branch "gh-pages", rename the html file to index.Rmd _in the gh-pages branch_ and turn on github pages and set to gh-pages branch
    - building site using __Netlify__: [steps here](https://www.netlify.com/blog/2016/09/29/a-step-by-step-guide-deploying-on-netlify/)
      - link Netlify to GitHub account, select repo and branch to deploy site
      - because ACRE_analysis repo belongs to BITSS I can't build the site but I can request to install Netlify to access the BITSS repos
  - also read [this chapter](https://bookdown.org/yihui/blogdown/deployment.html) on deployment in Creating Websites with R Markdown, and read about xaringan presentations [here](https://bookdown.org/yihui/rmarkdown/xaringan.html) and [here](https://github.com/yihui/xaringan/wiki/Deploy-Slides-Online)
    - [Rstudio community post: deploying xaringan slides to GitHub pages](https://community.rstudio.com/t/deploy-xaringan-slides-to-github-pages/16459)
- Added minor edits to slides in `01_WEAI2020.Rmd` in ACRE_analysis repo  

did not get to the tasks below (copied from email):    
- Review definitions in the glossary and make sure they match the text in the guidelines. Add any definition you find missing in the glossary.
- Write an improved readme file for the ACRE repository. See this one for an example of a good readme.
- Spend some time with the figure on the garden of forking paths.  Try to  figure out ways to color or highly a subset of branches.

I worked 22 hours during Week 7.

## Week 8 (7/6)

- Wasn't able to deploy slides using Netlify to set `BITSS/ACRE/slides` as base repository, so instead here is a  
_Tutorial to deploy xaringan presentation to github pages:_  
  (steps from [this Rstudio community post](https://community.rstudio.com/t/deploy-xaringan-slides-to-github-pages/16459))  
  1. Create a GitHub repo with the xaringan presentation rendered to html
  2. Create a branch titled gh-pages
  3. In the gh-pages branch, rename the presentation file ending in .html to `index.html`
  4. Open the Github repo in your browser and click on Settings. Then turn on GitHub pages and select gh-pages as the source.
- Made minor edits to most recent version of slides in `WEAI2020_slides` repo before deploying
- Embedded youtube video of WEAI presentation in Introduction chapter of Guidelines
- Automating github contributions again:
  - used [contributors.R](https://github.com/hadley/r4ds/blob/master/contributors.R) and index.Rmd file to write script pulling contributor info for ACRE Guidelines repo, storing in table for now.
  - looked at [this website](https://opensource.guide/legal/) for information on using another author's open source work: "For example, someone cannot legally use any part of your GitHub project in their code, even if it’s public, unless you explicitly give them the right to do so."

Did not get to tasks below:
- Summarize chapter 11 of _Transparent and Reproducible Social Science Research_
- Review definitions in the glossary and make sure they match the text in the guidelines. Add any definition you find missing in the glossary. + FIX FORMAT
  - either fill in definition from guidelines or leave it blank; pull out any relevant terms **by end of July**

I worked for 29 hours during Week 8.

## Week 9 (7/13)

- Add contributors to chapter; clean contributors.R file when done
  - edited contributors.R script to write `contributors.csv`, which contains contributor info and links to each contributor's GitHub profile
  - added chunk in contributions chapter to read in `contributors.csv` and paste each contributors name and link
- Chapter 11 summary
  - added summary to `09-additional-resources.Rmd`, changed chapter heading to "Tips and Resources for Reproducible Workflow" _but file name is still the same; does that need to change?_
- Review definitions, for missing definitions leave note for Aleks/Fernando
  - fixed formatting and added "analysis code", "cleaning code", "display item" and "reproduction tree"; "display item" and "reproduction tree" still need definitions

I worked for 24 hours during Week 9.

## Week 10 (7/20)

##### ACRE guidelines
- Added definitions to `11-glossary.Rmd`: claim (concept), distinguish between causal and descriptive within claim; specification, reasonable specifications; moved "coding errors" in chapter 7 to definitions chap
- `09-additional-resources.Rmd`: added a narrative description on how each tool helps reproducibility

##### deworming OPA!!! search for name in doc, refer to GH issue for priority
- Completed values of summary tables: filled in from sources code chunk, removed w<sub>l</sub> and h<sub>l</sub> variables
- Listed inputs and outputs in first two lines of code chunks beginning with chunk_ :
  - Notes from weekly meeting: two long hashes separate wrapper function (first line) from action; fill in inputs/outputs from this section; res1 is anonymous output (doesn't mean anything in context so search in doc)
  - notes and questions: Line 289 clarify CEA_var and CEA_cash_var  

Did not complete the tasks below:
- Create a [half line break](https://stackoverflow.com/questions/24467036/make-a-half-row-break-br) instead of full `<br>` HTML tag under details
  - started working on this but was unable to change br size to less than 100% (used `<br style="line-height: 25%" />`; can adjust percentage or set size manually)
- Remove tag in summary table caption
- Add reference for Suri:
  - Notes from weekly meeting: reference in 2.2.1.1 wage_ag_so l109 make comment more reproducible!!! find that specific location of 11.84 in the Suri paper (add in r source chunk); edit ~537 in doc using Rmd notation; match formatting in bibliography.bib file [import into bibtex option in google scholar]; also for self-employed profits and hours
- Two other tasks in GH issue

I worked __28__ hours during Week 10.

## Week 11 (7/27)

- Complete values in summary table: rounded values to hundredths; only completed values through equation 13 (5 left)
  - note from Monday meeting on guesswork: not cited as a result or from a resource/dataset, e.g. gains in earnings section working lifetime is 50 years
- Suri 2011 paper reference: _Selection and Comparative Advantage in Technology Adoption_ in bibliography.bib file should be correct; cannot find hourly agricultural wage in paper

#### Questions for next week
- chunk `main-pe-print`: path to image is absolute
- moving table_10 values to table_1: Why were treatment effects for gains in earnings (around 1059) in separate columns when they were in table_10? I think they should all be in research or guesswork
  - was table_10 intended to be like the analysis table under approach 3? (`sum_tables21 code chunk`)
- Go over note in cost2 code chunk inputs

Did not complete the tasks below:
- half line break: try using CSS, edit class attribute for `<p>` element to create a smaller line break
- new tasks in GH issue: rewrite section 3 before benefits, write a new readme file; use wealth tax OPA as a starting point

I worked __6__ hours during Week 11.
