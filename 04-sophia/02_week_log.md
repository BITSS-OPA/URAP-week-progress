# Week 2 

## Tasks:
1. how to update a fork repo - figure out and write a tutorial (steps) ~1 hour
2. how to insert images in Markdown "![caption]()"
3. Explore dewarming more detail - locally, change values - build a collection of questions, send on friday - weekly progress    fluidRow() ???
4. R markdown tutorial
5. read documents code - 05_final_opa.Rmd


## Reports: 6~7 hours
1. how to update a fork repo
   - https://gist.github.com/CristinaSolana/1885435 (steps are exactly like this)
   - Summarized steps, however, are as following:
     1. Clone your fork by putting the following command in terminal: 
        - git clone git@github.com:YOUR-USERNAME/YOUR-FORKED-REPO.git
        - (to get the link: click the green "clone or download" button in your online github repo)
     2. Put the commands in terminal: 
        - cd into/cloned/fork-repo (you can find path by draging your folder into terminal)
        - git remote add upstream git://github.com/ORIGINAL-DEV-USERNAME/REPO-YOU-FORKED-FROM.git
        - git fetch upstream
        - git pull upstream master
     3. Push in your local github desktop App
2. Github and markdown format cheat sheet
   - writing & formatting: https://help.github.com/en/github/writing-on-github/basic-writing-and-formatting-syntax#lists
   - insert image and emoji: https://guides.github.com/features/mastering-markdown/
3. Explore dewarming more detail
   - Lists of questions on ui.R:
     1. I know that fluidRow() creates different rows, but why create several "fluidRow()"? Why not done in one func?
        - https://shiny.rstudio.com/reference/shiny/latest/actionButton.html
     2. actionButton("run", label = "Run Simulation")
        - label is the label, but is "run" a uniform function call?? 
        - actionButton("goButton", "Go!") - different for each one?
     3. functions: withMathJax() useShinyjs() ? --> for math expressions (latex)
     4. Why can't I see which data it used? Is it "source("all_analysis.R")" ???
     5. When including multiple tabs, then must use tabsetPanel(tabPanel())? two tab bars, default selecting the first?
     6. mainPanel() ? - how do I know where will this check box show in the webpage
     7. why the latter tabPanel() create tab on the top of the page like main page? but previous tabPanel() is in the middle
   - Lists of questions on server.R:
     1. I am very confused on this server; espicially the if else if statements
     2. withMathJax() function?
     3. creating graphs with ggplot() is quite cool, I think I could try doing that too
     4. use as.numeric() to convert everything into numeric format?
4. R markdown tutorial
   - link: https://resources.rstudio.com/the-essentials-of-data-science/getting-started-with-r-markdown-60-02
   - Just started
5. read documents code - 05_final_opa.Rmd - haven't started it; may start after watching R markdown tutorial
