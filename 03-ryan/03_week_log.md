# Week 3 Report
* Installed git for windows, wrote tutorial for reproducibility; watched shiny tutorial, took notes on topics covered; parsed through shiny files all_analysis.R, server.R, ui.R; Fixed deworming dd equation numbering.
* Worked ~9 hours

##Git Instalation Tutorial
1. Go to https://git-scm.com/download/win, and download correct file for your computer specifications
2. Run the downloaded exe file, and follow the instructions of the installation wizard to install. Default selections in the wizard are probably fine.

## Shiny Tutorial Notes
# Intro
* Shiny apps require computer running R in the background
  * Can be local or via web server
* Every app needs a UI and a set of "instructions" written in R
* Basic Template:
  * ui <- fluidPage()
    server<- function(input,output){}
    shinyApp(ui=ui, server=server)
* elements can be added as arguments of fluidPage()
* reactive inputs made w/ input() function
* reactive results displayed w/ output() function
* Server function:
  * Used to assemble inputs into outputs
  * Basic principles:
    * save output built to output$
    * build output with render() function
    * access input values with input$
* To package app for publishing/sharing etc., create one directory with all necessary files - app.R, images, datasets, etc.
* shinyapps.io is server run by RStudio to host shiny apps
# Code for reactive content
* reactive values notify of changes, and send value to render function to augment based on data inputted, and outputting some value/graph/etc.
* Important reactive render functions
  * renderDataTable()
  * renderImage()
  * renderPlot()
  * renderPrint()
* pass blocks of code between {} as argument of render functions
* reactive() function works as mediator to facilitate input-> output communication
  * reactive expressions "know" when they are invalid or notes
* isolate() removes reactivity of objects
* observeEvent() - triggers code to run on Server
  * Can specify precisely which reactive values should invalidate observer
* eventReactive() - Delays reactions
  * creates a reactive expression that can be used to specify which values should invalidate the expression
* reactiveValues() - creates list of reactive values that can be Used
  * rv$ - used to manipulate said values in conjunction with observeEvent()
# UI customization
* HTML tags can be used to edit html output of apps
* use tags$ in order to reference HTML tags in R
  * ie tags$h1() = <h1></h1>
  * syntax for tags
    * named argument passed as tag attribute
    * unnamed arguments appear inside tags
* html chunk can be passed into fluidUI with HTML() function
* fluidRow() creates rows in UI
    * argument for fluidRow is column(width, offset = offsetAmount, outputToShowHere)
* Shiny has various ..Panel() functions to create static visual elements
* navbarPage() creates navigation bar with arguments being tabs of the navbar
* prefab packages exist to create UI templates such as shinydashboard
* CSS can be used to add style to html document
  * Can be used within the HTML() function in the same manner as would be done in a normal html document, or can be linked to an external css file that exists in the app folder, and set theme="cssFile.css" influidPage function of R doc
