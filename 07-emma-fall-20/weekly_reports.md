# Weekly reports of progress

## Week 5 (9/21)

##### Deworming OPA
- code readme: look at edits in recent pull request
  - intermediate values are _in
  - results are _pe
  - make instructions/ descriptions consistent
  - two types of code chunks: 1) summary of info/format - these have summary table 2) analysis - follow structure of two lines of hashes, everything enclosed in a chunk without arguments SO THAT we can call argument below (can rerun step by step)
    - analysis chunks: invisible line deposits functions as list in global (current) environment -> in some, declare values/ call function to display dynamically in the text
  - just explain analysis code chunks; idea is to help the reader learn how to read code chunk, not to explain line by line in detail; for lines that need clarification, add comments in dynamic documents
- keep appendix in readme for now, could shift to dynamic doc later
- high level explanation of analysis code chunks
- doc structure: 3 methods from 3 sources are described, functions are called later in a simulation exercise and analysis produces 1 result; montecarlo simulation runs simulation n times and produces n results, which can be interacted with in app
- all_analysis.R called in app contains results from doc simulations (modifying doc = modifying app)

- read and edit code readme, meet with Aleksandra
- if more time, switch to deployment of app
- new URAPs will send questions about onboarding

I worked x hours during Week 5.


## Week 4 (9/14)

##### Deworming OPA
- Helped Aleksandra clarify questions for dynamic doc readme
  - remaining questions:
    - why are functions organized in chunks, and then added to global environment?
    - should &beta; hat be defined under w<sub>t</sub> calculation?
- Shiny app branding
  - edited description of results in side panel
  - added BITSS and CEGA logo; to include an image in a side panel the images have to be in a subdirectory "www" in app directory

I worked 8 hours during Week 4.


## Week 3 (9/8)

##### onboarding_ras
- updated CBO report link, wealth tax links; added links for Jupyter Notebook tutorials and Voilà

##### Deworming OPA
- Shiny branding: wrote brief description of distribution on first tab, added links to BITSS and EA
- Issue with rendering logo images in sidebarPanel: don't show up in output when running app.
- Did not get to investigating deployment of shiny app/ website

I worked 10 hours during Week 3.


## Week 2 (9/2)

##### Onboarding package for new URAPs
- Added links to tutorials; during weekly meeting check source of Saez and Zucman letter, link to 2016 Deworming paper section 5, and figure out categories for extra links.

##### Deworming OPA
- looked into branding for Shiny App: I'm still becoming familiar with the UI file for the app, but these links look helpful
  - [Building a user interface](http://shiny.rstudio-staging.com/tutorial/written-tutorial/lesson2/)
  - [Stack overflow post - Embedding image in Shiny App](https://stackoverflow.com/questions/21996887/embedding-image-in-shiny-app)


I worked 8 hours during Week 2.


## Week 1 (8/26)

##### Deworming OPA
- emailed Ted to verify source of take-up rates without subsidy in Kremer and Miguel 2007
  - edited body but not bibliography file to include new source: Miguel and Kremer (2004) Table III and footnote 18
- edited readme: changed order of gh contributors to number of contributions, added CRediT roles

##### Draft onboarding package for new URAPs
- Created draft readme for a new repository 'onboarding_ras', will add links to online tutorials and useful tutorials in BITSS-OPA/tutorials
  - What other materials should be added? Should they be deworming OPA specific or accommodate for future OPAs?

I worked 10 hours during Week 1.  
