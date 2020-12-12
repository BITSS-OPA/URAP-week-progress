## Week 17 12/7 - 12/11

***Completed Tasks:***
* investigate resizing for large screens
* organize sources
* clean up all names in DD and app:
* all sources finish _so

***Ongoing Tasks:***
* Stuck at all-steps code chunk: trying to wrap it around a chunk_xxx() format but keeps breaking

***Questions/Notes:***
* Add sources/info:
  * lambda1_new_sd_so # Add source
  * tax_so # Add INFO!

* delta_ed_par_so <- 1 Are they place holders?
* delta_ed_ext_par_so <- 1 Are they place holders?
* costs2_ea_in: not all shiny app inputs need to be from sources right?

* switched data and research because research variables use data variables to calculate. ex. ex_rate_2018

* chunk analytic code chunks:
  + setup code chunk does it need to be in the form of chunk_xxx ?


## Week 16 11/30 - 12/4

***Completed Tasks:***
* Issues that Fernando assigned

***Work in Progress:***
* Reorganize the helptext into a table (trying to pass the variable value into the table)


## Week 15 11/23 - 11/25

***Completed Tasks:***
* Input the results from the forwarded report
* Added hyperlink to Shiny App
  + A little bit inefficient but works

***Work in Progress:***
* Update the plots so that they react to any inputs
* Rearranging components

## Week 14 11/16 - 11/20
***Completed Tasks:***
* Deployed deworming project on binder and wrote a tutorial on how to do so: [link](https://github.com/BITSS-OPA/Tutorials/blob/master/Binder/Deploy%20OPA%20on%20Binder.md); also updated readme file
* Watched tutorials, tried out some of the formats proposed in the videos, and wrote proposal below


***Work in Progress:***
* Still figuring out how to move TOC to the top (tried a couple of methods, not turning out well)
* Read ACRE guidelines but haven't filled out the inputs yet

***Proposals:***  

[Yihui's Demos](https://www.youtube.com/watch?v=qLEkUjxk7e8&ab_channel=RStudio)
* [6:05-6:50] Change light/dark mode along with the operating system
* [9:23-9:43] Word output -> add header for BITSS
* [16:50-17:40] flexdashboard (alternative to bookdown)
  + Would look nice and solve the TOC problem but might take up a lot of time to change to that format
* [19:05-19:33] bookdown::gitbook
  + Also bookdown format but very flexible - I wasn't able to knit it successfully though despite trying for a good bit   

[Pins, Plumber, Shiny](https://www.youtube.com/watch?v=SwjlcYC_Iqw&ab_channel=RStudio)
* Pins: used to store small, reused, current data objects so that we don't need to recreate it again (collaborative within a project group, kind of like GitHub)
  + Could be useful to store the simulation data?
---------
*I don't have any proposals for input below but wrote down a summary anyways*  
[Effective Visualizations](https://www.youtube.com/watch?v=BEnLLQaUyzQ&ab_channel=RStudio)
* Spatial encoding is the most effective: positioning marks on a common scale (scatter plot) or using length of some sort of mark (bar chart)
* Filled framed line charts make the shape of the line pop up (we are already doing this so yay!)
* [15:00-17:27]Implicit error: measurement error that is inherent to a given dataset but not explicitly defined or accounted for in the dataset.
  + Could fit our project, maybe different countries have different ways of counting different variables, and different research papers use different assumptions (already addressed in the DD)
  + Use Annotation method on the plot

[Golem Package](https://www.youtube.com/watch?v=SE6TnUV4nC4&ab_channel=RStudio)
* I'm not sure if this package is that useful - it's almost like an automation tool that allows you to generate production-grade shiny apps easily. The video talked about its structure and how to use it, but since our shiny app is written already, I'm not sure if we need to rebuild it with this package.

## Week 13 11/9 - 11/13
***Completed Tasks:***
* Worked on the "Executive Summary" style for DD
* Updated ggplot for Shiny
* Emailed Charlie about observeEvent
* Updated .gitignore, added comments to the .css style
* Reproduced the tree image, worked with Ella, and emailed Fernando and Aleks about the proposal for the website
* Completed tasks from Fernando

***Bug:***
* `output: html_document` conflicts with `bookdown:html_document2`, and breaks the css style, so I commented it out.

## Week 12 11/2 - 11/6
***Assigned Tasks:***
* Fix the `show equations` bug
* Try out ggplot() themes  
* Go over GitHub issues with Samira
* Try out 4-6 different CSS files/packages and recommend 1-2 final
* Modify certain subcomponents of the CSS to customize our app
* Learn more CSS syntax  

***Completed Tasks:***
* Fixed the `show equations` bug
  + Deleted `\\label{eq: }`. It gets reprocessed every time we click `show equations`. Each label name can only be used once, which is why after the first click there will be a render error. - [Reference link](https://physics.meta.stackexchange.com/questions/5396/using-labels-with-mathjax)
* Went over GitHub issues with Samira
* Learned CSS syntax, tried themes, played with ggplot2 package, and did customization to the .css file.
  + See the current version in the branch `CSSaesthetics` - [Branch Link](https://github.com/BITSS-OPA/opa-deworming/tree/CSSaesthetics)
  + Email, twitter, fb linked icon for footer?
`#c1dced`


## Week 11 10/26 - 10/30
***Assigned Tasks:***
* Fix the figure update bug
* Remove CEA, RCEA related code and text
* Help Charlie with the readme file
* Look into CSS for dynamic documents and shiny app

***Completed Tasks:***
* Fixed the bug, removed CEA & RCEA, and explored CSS
* Met with AWS

***Proposal/Bugs***:
* For `show equations`, when you click the checkbox multiple times, it renders the source code and not in Latex style
* CSS for dynamic document
  + Scrollable code block for the blocks where we set values to variables - [Reference link](https://bookdown.org/yihui/rmarkdown-cookbook/html-scroll.html)
  + Tabs to present main results in DD - [Reference link](https://holtzy.github.io/Pimp-my-rmd/#tabs_for_sub-chapters)
  + Our plots could be a little bit more stylish with ggplot() - [Reference link](http://www.sthda.com/english/wiki/ggplot2-density-plot-quick-start-guide-r-software-and-data-visualization)
  + **Theme package** `prettydoc` -[Reference link](https://statr.me/2016/08/creating-pretty-documents-with-the-prettydoc-package/)
  + Header/footer for BITSS logo - [Reference link](https://holtzy.github.io/R-Markdown-Parallax/)
  + Preset CSS template for Markdown - [Reference link](http://markdowncss.github.io/)

* CSS for shiny app
  + Theme for shiny apps: [Reference link](https://rstudio.github.io/shinythemes/)
  + Our plots could be a little bit ore stylish with ggplot() - [Reference link](http://www.sthda.com/english/wiki/ggplot2-density-plot-quick-start-guide-r-software-and-data-visualization)
  + Example we could refer to with css file:
    - [Reference link 1](https://shiny.rstudio.com/gallery/masters.html)
    - [Reference link 2](https://shiny.rstudio.com/gallery/dublin-transport.html)

## Week 10 10/19-10/23
***Assigned Tasks:***
* Work with Ella on using Latex for the Greek letter variables
* Add variable definition to DD
* Update helpText() so that it's interactive
* Fix Tag of the main figure in DD
* Improve resolution of final figure in results section
* Fix the figure update bug
* Look up RStudio Connect for computing capsule services

***Completed Tasks:***
* Worked with Ella and Lauren on GitHub Issues (5-6 hrs)
  + Zoomed with both people to provide solutions for their forked repository
  + Updated the tutorial on the forked repo

* Followed up with AWS Sales and researched on CPU and RAM for R Apps (6 hrs)
  + First month - 4 vCPUs & after that 1 vCPU to maintain the app
    - My reasoning is that it only takes 20 seconds to render app / run simulations. 10-100 users per day means about 10 per hour, but it's pretty unlikely that they will run the simulations at the exact same time. Plus, single threading doesn't mean users will be entirely blocked out from the app - it just means it might take longer for them to run the app. [Reference link](https://www.r-bloggers.com/2014/03/shiny-server-open-source-edition-solution-for-cpu-bound-apps/)
    - 4 vCPUs: 128.77 USD, 8 vCPUs: 391.28 USD

  + Meeting with Account Manager and Solutions Architect next Wednesday @ 2pm (30mins)
  + **?** What's our budget? AWS asked during the meeting but I wasn't sure

* Added dynamic helpText() to the shiny app (4-5 hrs)
  + Used `conditionalPanel()` to do the dynamic text
  + Changed the maximum height for the top fluidRow() from 300px to 400px


* Researched RStudio Connect for computing capsule services (1-2 hrs)
  + Not much finding though - we could buy RStudio Connect AWS instead of RStudio Connect to save money [Reference link](https://support.rstudio.com/hc/en-us/articles/360021856973-FAQ-for-RStudio-Connect-AWS)
  + But could also consult the solutions architect about this next week

* Fixed the resolution for the generated figure (1 hr): [Reference link](https://climate-cms.org/plots,/r,/rstudio/2019/03/06/generating-print-quality-plots.html) - use dpi
* Added variable definition to DD (1 hr)
* Worked with Ella on using Latex for the Greek letter variables (1-2 hr)
* Write up this report (1 hr)

***Work in Progress:***
* Tried to fix tag for the main figure, but failed (5-6 hrs)
  + I was actually stuck on this for a good bit and tried all sorts of methods I found on Stackoverflow. Unfortunately, none of them worked well. Got really close once, but still didn't work out.
  + Current edit: removed caption and changed it to a section header  

* Fixed the figure update bug (2-3 hrs)
  + I've started looking at it and tried a couple of reasons but still haven't fixed it yet





## Week 9 10/12-10/16
***Assigned Tasks:***
* Complete the template for 00_bones.rmd
* Remove run sims button
* Add variable definition to DD
* Add helpText() for policy estimates to clarify that the options are different assumptions

***Completed Tasks:***
* Completed tasks above
* Helped Samira with GitHub
* Contacted sales support for AWS, still waiting for a time to meet

***Discussion:***
* In 00_bones.Rmd, should we put result before the approach?
* Should we change the options for the policy estimates in Shiny App?
* Bug: In the Key Assumption tab, selecting options from the policy estimate box doesn't do anything. But changing the selection in the All Assumptions tab automatically updates the one in Key Assumption as well


## Week 8 10/5 - 10/9
***Assigned Tasks:***
* Merge Pull Request and Create Tutorial for .DS_Store Issues
* Create a tutorial for writing a readme for DD
* Price Estimate for Shiny App Deployment
* 3-5 Suggestions for Shiny App Aesthetics

***Completed Tasks:***
* Resolved the .DS_Store Issues and pushed the tutorial to Tutorials repo under GitHub folder: [here](https://github.com/BITSS-OPA/Tutorials/blob/master/GitHub/.DS_StoreIssues.md)
* Completed tutorial for the DD readme and pushed to Tutorials repo: [here](https://github.com/BITSS-OPA/Tutorials/blob/master/Tutorial%20for%20DD%20readme.md)
* Price estimate report [here](https://github.com/AleksandraMaa/Notes/blob/master/shinyAppDeployment/AWSPriceEstimate.md)
  + Quick estimate: about 350-500/yr
* Helped new URAPs with their questions with R and markdown

***Proposal:***
* DD: Add the variable definition from readme to the dynamic document?
* Shiny App:
  + In All Assumptions tab, Run Simulation button doesn't serve its original purpose because whenever we change an input below, it automatically updates.
  + We could present the median and sd in a better way - use different colors of lines to represent median, and one and two SDs, then use legend on top to match the colors with the name
  + The options of the policy estimate input are a bit unclear - could change the label or add helpText() to clarify that the options are different assumptions
  + Under Key Assumptions tab, add the currency unit to unit costs in new country or say somewhere that we are using USD
  + Aesthetics in All Assumptions tab:  
    - In research and GW tab, it looks like the input types are mixed: some are sliderInput and some are numericInput. Would it be better to unify them?
    - Use Latex for the greek letter variables for the label of each sliderInput
    - Group SD with the variable? So that there are not so many SD's lying around.


## Week 7 9/28 - 10/2
***Assigned Task:***
* Create tutorial/readme for the dynamic document
* Review shiny deployment for previous case study, and propose new options

***Completed Task:***
* Completed tutorial/readme for the DD
* Reviewed instructions for previous shy deployment
* Proposal for alternatives [here](https://github.com/AleksandraMaa/Notes/blob/master/proposal.md)
  + Best free option for now: Shiny Proxy - enterprise version of shiny server, and allows for multiple Shiny Apps for multiple users
* Helped new URAPs with their questions with R and markdown

***Questions:***
* Quick call to discuss the proposal before URAP meeting?


## Week 6 9/21-9/25
***Assigned Task:***
* Create tutorial/readme for the dynamic document
* Fix formats for the new URAPs' weekly reports

***Completed Task:***
* Fixed formats for weekly reports

***Work in Progress:***
* Completed the body of the tutorial, still working on the appendix

## Week 5 9/14 - 9/18
***Assigned Task:***

* Create tutorial/readme for the dynamic document
* Fix the main plot text display
* Fix the dynamic text for shiny App

***Completed Task:***
* Fixed the main plot text display
* Fixed dynamic text for shinyApp

**ALL THE COMPLETE WORK & WORK IN PROGRESS IS IN branch `shinyAppAesthetics`**

***Work in Progress:***
* Create tutorial/readme for dynamic documents
  + Wrote detailed tutorial up to 2.1.1.1
  + Met with Emma twice throughout the week to discuss / Q & A
  + TO-DO:
    - Complete Appendix A & B
    - Figure out how to add latex in ".md" extension

***QUESTIONS:***
* Could we schedule a time to go over the tutorial? I have a couple of questions about how it should look and also some questions about the dynamic document itself:
  - Why is every chunk of code before "Part 3 Main Results" in an overarching function `chunk_xxx()`? I noticed that these `chunk_xxx()` fucntions are not called in the main results when we are trying to render the plot.
  - What's the point of `invisible(list2env(...))`?
  - For `wage_t_mo_f()`, what's the definition of beta hat?
  - Should I put the code tracker that tracks different outputs/functions at the very end with the abbreviation appendix or is it fine to leave it where it is right now?
  ## Week 4 9/8 - 9/11

  _**Assigned Task:**_
  * (first create a branch of this repo, then) add dynamic text on prevalence and costs
  * Modify the aesthetics of the app. Make it as simple as possible, and improve user experience
  * Learn about the observe function for shiny, build a simple example (in a different repo).
  * Take notes as you learn how to edit this OPA. Identify things you need to know, and the answer once you figure it out. Then turn this notes into a tutorial.

  _**Completed Task:**_
  * Created branch `shinyAppAesthetics` and pushed updated shinyApp and readme.md
  * Fixed picture format for Tutorials
  * Added dynamic text under costs and prevalence
    + Put placeholders for costs because I wasn't sure if I found the right one
    + Rounded the inputs so that it only shows 2 decimal digits
  * Updates to the Shiny App plots
    + Wrapped the code rendering the plot in a function so we don't have to copy and paste it for every plot
    + Adjusted the plot style using the `theme()` function
    + Adjusted the xlim for each plot
  * Learned about the `observe()` function and built [a simple example](https://github.com/AleksandraMaa/Notes/blob/master/shinyApp/observeExample/app.R) (still work in progress to complicate it a bit more, but understood how it works)
  * Created [`Steps2Unfold.md`](https://github.com/AleksandraMaa/Notes/blob/master/Steps2Unfold.md) : ongoing task
    + Added how I unfolded the OPA from my experience
    + Put down some ideas how we can simplify things


## Week 3 8/31 - 9/4

  _**Assigned Task:**_
  * Submit readme.md as a Public Pull Request
  * Review wealth tax opa and deworming OPA

  _**Completed Task:**_
  * Submitted readme.md as a PR
  * Submitted all the tutorials (all 5 .md files) as PR
  * Read wealth tax opa related files
  * Read deworming OPA related files

  ***Questions:***
  I've knitted and read all the outputs - what's next? Any specific parts that I should focus on?

  ## Week 2 8/24-8/28


  _**Assigned Task:**_
  * How to use, edit, and write in Markdown format (Monday)  
  * Suggest some edits in the readme.md file (Monday)
  * Create a tutorial on markdown format
  * Create a tutorial git/gihub and add it to the tutorials repo
  * Create a tutorial shiny (note on already existing tutorial) and add it to the tutorials repo
  * Buid a shiny app
  * Review the wealth tax opa
  * Review the deworming OPA, focus on DD (05_final_opa.Rmd) and shiny app. (@fhoces will fix links before) @AleksandraMaa


  _**Completed Task:**_
  * Suggest some edits in the readme.md file  
    * "repository and its accompanying" -> "repository, its accompanying"
    * Add a caption for the image -> Maybe use the more informative image from the paper?
    * "demonstration of a OPA in your organization please" -> "demonstration of an OPA in your organization, please"
    * Added: "The three things this case study includes are:"
    * List of contributors - should there only be one list? order by first name or last name?  
  * Create a tutorial on markdown format
  * Create a tutorial git/gihub and add it to the tutorials repo
  * Buid a shiny app
  * Create a tutorial shiny (note on already existing tutorial) and add it to the tutorials repo

  ***Work in Progress:***
  * Review the wealth tax opa
  * Review the deworming OPA, focus on DD (05_final_opa.Rmd) and shiny app. (@fhoces will fix links before) @AleksandraMaa

  ***Questions/Concerns:***
  * No access to Tutorials repo so I can't upload my tutorials





## WEEK 1   8/19-8/21


##### **_Assigned Tasks_**:

  * Brief review of Git/Github.

  * Brief review of RMarkdown

  * Learn Shiny

  * Read OPA Paper


  ##### **_Completed Tasks_**:

  * Learned the basics of Git/Github with both GUI and Bash CLI

    + Followed the concepts and demos in the slides

    + Watched 3/4 of a Git/Github concept and command line course (the whole course is about 3.5 hrs - 4 hrs)

    + Tried out the GUI and CLI operations in a private test repository

    + Created [handwritten notes](https://github.com/AleksandraMaa/Notes/blob/master/Version%20control%20with%20Github.pdf) based on the CEGA slides and the [YouTube course]
    (https://youtu.be/Ytux4IOAR_s)

  * Followed the slides and exercises about RMarkdown

  * Watched R Shiny [Tutorial](https://shiny.rstudio.com/tutorial/)

  * Read the [paper](https://osf.io/preprints/metaarxiv/jnyqh) about Open Policy Analysis

    + High credibility research that helps policy-making graph

    + Conceptual Framekwork for OPA that includes open output, open analysis, and open materials

  * Worked about 23-24 hrs

  ##### **_Questions_**:

  * In the CEGA Git slides, did it flip the file format examples for human readable and machine readable?

    + .pdf / .docx / .etc should be human readable
    + .R / .do should be machine readable & human readable?
