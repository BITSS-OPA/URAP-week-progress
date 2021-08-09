# Weekly reports of progress

## Week 5 (8/3)

##### Assigned tasks
- SSRP dashboard: creating chloropeth maps in R (SSRP_dashboard repo)
  - investigate choropeth library/ creating choropeth maps in R
  - create a map and color if there's a reproduction; later: gradient according to number of reproductions
- go on SSRP and choose publication mode to resubmit reproductions
- create a PR for 00 script and tag James - testing forward slash to see if it works universally
- continue code review

##### Completed tasks
- submitted reproductions on SSRP; will submit reproductions to forum today (8/9)
- SSRP dashboard choropleth map
  - created example showing 5 US reproductions and 2 Chile reproductions
  - Resources used: [R graph gallery](https://www.r-graph-gallery.com/327-chloropleth-map-from-geojson-with-ggplot2.html), [Plotly R Figure Reference](https://plotly.com/r/reference/choropleth/) [Plotly choropleth maps](https://plotly.com/r/choropleth-maps/#using-builtin-country-and-state-geometries), [Trafford Data Lab](https://medium.com/@traffordDataLab/lets-make-a-map-in-r-7bd1d9366098)
- Code review:
  - Reviewed up to L440 (CPI Adjustment)
  - Added comments, have not implemented unit test yet

##### Notes
- Code review:
  - L417 Weeks worked: recoding `wksworkorg`, which is not included in variables when loading cps.dta file (will check if this was in the data extract, if yes then add to L205 when loading dta file)
  - L437-48 generating `household` and `children` variables: what total is this calculating? (copied lines below)
  ```
  bysort year serial: gegen household = total(pernum)
  bysort year serial: gegen children = total(child)
  ```

I worked 30 hours during Week 5.

## Week 4 (7/27)

##### Assigned tasks
- UI project readme:
  - Add CPSID to household level in readme, don't move it from person-level table
  - CPS data should be downloaded as .dta, `rectangular`
  - add DOL note about download for 5159
  - add asterisk to table with QINCLONGD, QOINCWAGED
- UI Project code review: start with cleaning CPS file section
    - run lines and explain steps in code sections, look at summary statistics and add unit tests
    - unit tests (add a condition in the code that has to work, throw error if code doesn't work); leaving breadcrumbs to improve reproducibility
- UI Project: backward/forward slash compatibility

##### Completed tasks
- UI project readme:
  - Added CPSID to household level table
  - Added note about CPS data download as .dta, `rectangular`
  - Added note about download for ETA 5159
  - Added note to table about QINCLONGD, QOINCWAGED
- ACRE images not rendering correctly on site
  - added .nojekyll file to root folder [link to SO post]()
  - still had issues, so moved image files back to root folder for now
- Resolve backward/forward slash compatibility
  - Stata should interpret the forward slash correctly as a path delimiter (read [here](https://www.stata.com/support/faqs/programming/backslashes-and-macros/))
    - will implement in [00_script-control.do](https://github.com/jamesohawkins/UI-Project/blob/main/Scripts/00_script-control.do) and push, but I think it would be a good idea to have someone test using Windows before changing all backslashes.
  - Read posts [here](https://www.btskinner.io/lpo9951/compatibility/), [here](https://www.statalist.org/forums/forum/general-stata-discussion/general/1444227-mac-and-windows-path) and Stata forum posts [here](https://www.statalist.org/forums/forum/general-stata-discussion/general/26693-stata-replaces-forwardslash-with-backslash-why) and [here](https://www.statalist.org/forums/forum/general-stata-discussion/general/502688-using-stata-with-files-stored-on-dropbox-from-both-a-mac-and-a-pc)
- UI Project code review:
  - So far I've only added comments up to Clean other covariates section (L289), but will work another 2 hours before tomorrow.
  - have not implemented any unit tests yet.

##### Notes
- Several Stata cheatsheets/training [here](http://geocenter.github.io/StataTraining/) (add to tutorial repo)
- Questions
  - look into converting cpsid and cpsidp to string (should be format %15.0f, but stata shows %14s)
  - what convention for comments? //, /*, *

I worked 30 hours during Week 4.


## Week 3 (7/20)

##### Assigned tasks  
- Organize ACRe repo: put images in root/images folder, change paths
- FUTURE TASK (ACRe): write readme file that has short explanation, points to SSRP, add contributors code
- UI project: Review data intake
  - Follow readme file instructions to download the 4 datasets used
- UI project: Investigate scripted data download from IPUMS
- UI project: try to find a solution for /\ differences in stata for mac and windows

##### Completed tasks
- Cleaned ACRe repo: created a new folder called "images" and moved .png files from root folder
  - Not all image files were used in building the book, but I moved these to the images folder as well
- Downloading IPUMS data
  - CPS:
    - `CPSID` is a household level variable on CPS website
    - data format and structure download: chose .dta, cross sectional > rectangular > person
  - DOL:
    - downloaded files 203, 902p, 539 and 5159 from DOL website; would be helpful to have note for 5159 (download both regular program and PEUC data); all other files had regular program only
  - BEA:
    - data is a PDF; would this be more helpful as a csv?
- Missing CPS variables when loading dataset with do file: `wksworkorg`, `wkstat`, `whyptlwk`, `fullpart`, `uhrsworkorg`, `paidhour` and all flag variables (`q*`)
  - Created another data extract with the missing variables and original variables in readme, and added variables to tables in readme
  - No flags found for: `wksworkorg`, `wkstat`, `whyptlwk`, `fullpart`
  - only found QUHRSWORKORG, QPAIDHOU
  - could not find flags for `QINCWAGED`, `QINCLONGD` at first; added automatically when adding the non `-D` version of the flag
  - final extract: 68 variables, 51 samples
- Investigate scripted data download: as of May 2019, IPUMS does not support logging in via command line ([here](https://forum.ipums.org/t/how-to-download-to-linux-server/2966)), which is needed to download IPUMS data.

I worked 30 hours during Week 3.

## Week 2 (7/13)

##### Assigned tasks  
- Cleaning ACRE guides repo: suggest cleanup structure and contact fernando in 1-2 days for approval
  - clean up repo, (images in image folder; intermediate `_files` should not be in root)
  - maybe look at bookdown repos for best practices/suggested format
- Cleaning deworming repo: move csvs to data, run readme.Rmd; leave www folder for now
- Look at documentation in baseline model email
- FUTURE TASK: continue consolidating slide folders: connect prototype site to repository
  - BITSS-OPA/Slides and BITSS/Slides; create two sites (one for ACRe and OPA)

##### Completed tasks
- Deworming OPA repo: moved contributors and links csv files to data folder
- Read UI OPA documentation
- Cleaning ACRE repo (in progress): Moving files to a new `images` folder
  - tracked which image files were in both `docs` folder and root folder, in docs folder only, and in root folder only
  - changed one file path in `06-Robust.Rmd` line 24 and knit document to test, R creates a new folder within docs folder (I anticipate maybe 2-5 more hours to complete task)

I worked 30 hours during Week 2.  


## Week 1 (7/6)

##### Assigned tasks  
- Deworming OPA: move code scripts from root folder
- Deploying slides: create pipeline to deploy multiple slide decks from same repo

##### Completed tasks
- Deworming OPA: moved code scripts; did not get to fixing duplicates in `www` folder.
  - _Question:_ should contributors.csv and links.csv be moved or kept in root folder?
- Deploying slides: created [prototype gh repo](https://github.com/BITSS-OPA/slides-deploy-prototype) with 10 xaringan slide decks; Netlify site link [here](https://slides-deploy-prototype0.netlify.app/)
  - watched [webinar](https://www.rstudio.com/resources/webinars/sharing-on-short-notice-how-to-get-your-materials-online-with-r-markdown/) on sharing materials online with R Markdown
  - read [chapter on xaringan](https://bookdown.org/yihui/rmarkdown/xaringan.html) and [rmarkdown's site generator](https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html)
  - looked at examples of different methods to share a collection of .Rmd files as a website
  - downside of rmarkdown sites: no subfolders; everything has to be in root folder (_site folder when using netlify to deploy)
    - NOTE: slidedecks folder shouldn't be necessary for rmarkdown site, only need .yml, .Rmd, index.Rmd, Rproj files + readme for git repo

##### Notes
- Examples I looked at for deploying slidedecks
  - Grant mcdermott example: [GitHub - uo-ec607/lectures: Lecture notes for EC 607](https://github.com/uo-ec607/lectures) - each lecture (site) in its own folder; uses raw.githack
  - [rmarkdown site](https://github.com/apreshill/data-vis-labs-2018)
  - [blogdown site](https://github.com/andrewheiss/evalsp21.classes.andrewheiss.com) by Andrew Heiss
  - [webinar blogdown site](https://github.com/apreshill/share-blogdown)
- Can try Netlify's continuous deployment [here](https://app.netlify.com/sites/slides-deploy-prototype0/settings/deploys) by linking to git repo; did not link yet because can't be undone once linked
  - _Without continuous deployment:_ To update the site, you would first rebuild in RStudio and then drop the revised site output folder on the Deploys page for your Netlify site (discussed in webinar [here](https://rstudio-education.github.io/sharing-short-notice/#84))
  - _With continuous deployment:_ Netlify should deploy the updated site whenever you push to the connected Git repository (not sure whether you need to first rebuild in RStudio or not)

I worked 30 hours during Week 1.  
