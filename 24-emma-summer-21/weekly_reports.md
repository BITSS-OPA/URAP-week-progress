# Weekly reports of progress

## Week 2 (7/13)

##### Assigned tasks  
- Cleaning ACRE guides repo: suggest cleanup structure and contact fernando in 1-2 days for approval
  - clean up repo, (images in image folder; intermediate `_files` should not be in root)
  - maybe look at bookdown repos for best practices/suggested format
- Cleaning deworming repo: move csvs to data, run readme.Rmd; leave www folder for now
- Look at documentation in baseline model email
- In a later week: continue consolidating slide folders: connect prototype site to repository
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
