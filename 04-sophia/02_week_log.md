# Week 2 

## Tasks:
1. how to update a fork repo - figure out and write a tutorial (steps) ~1 hour
2. how to insert images in Markdown "![caption]()"
3. fluidRow() ???
4. Explore dewarming more detail - locally, change values - build a collection of questions, send on friday - weekly progress
5. R markdown tutorial
6. read documents code - 05_final_opa.Rmd


## Reports:
- how to update a fork repo
      - https://gist.github.com/CristinaSolana/1885435 (steps are exactly like this)
      - Summarized steps, however, are as following:
            - Open terminal
            - Clone your fork by putting the following command in terminal: 
                  * git clone git@github.com:YOUR-USERNAME/YOUR-FORKED-REPO.git
                  * (to get the link: click the green "clone or download" button in your online github repo)
            * Put command: cd into/cloned/fork-repo (you can find path by draging your folder into terminal)
            * Put commands: git remote add upstream git://github.com/ORIGINAL-DEV-USERNAME/REPO-YOU-FORKED-FROM.git
                            git fetch upstream
                            git pull upstream master
            * Push in your local github desktop App
