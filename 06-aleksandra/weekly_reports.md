## Week 8 10/5 - 10/9
***Assigned Task:***
* Merge Pull Request and Create Tutorial for .DS_Store Issues
* Create a tutorial for writing a readme for DD
* Price Estimate for Shiny App Deployment 
* 3-5 Suggestions for Shiny App Aesthetics

***Completed Task:***
* Resolved the .DS_Store Issues and pushed the tutorial to Tutorials repo under GitHub folder
* Completed tutorial for the DD readme and pushed to Tutorials repo
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
