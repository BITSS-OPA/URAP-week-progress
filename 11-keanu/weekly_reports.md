# Weekly Reports of Progress. 


## Week 5 (10/23/20)

**Assigned Tasks**
- Implement button to show/hide all SDs
- Lookup hover over parameters for more information

**Completed Tasks**
- Submitted a [pull request](https://github.com/BITSS-OPA/opa-deworming/pull/65)
  - Implemented button to show/hide all SDs
  - Implemented two hover over examples

**WIP**
- Implementing the rest of the hover over parameters.
  - I'm going to wait for the next meeting so we can discuss where we want these hover overs to appear and what we want to display in them.

**Questions/Notes**
- I think it would be great if we could expand the tab panels to fill the entire side bar. I think it would look better if it did so.
- When picking some policy estimates (different models), the show/hide all SDs button does not work. I think this is an issue with picking which parameters to display based on user selection in the server file. I could take a pass at it if no one wants to.
- Came across interesting part of package that I used for popovers. I think it could be useful in various applications, linking it [here](https://ebailey78.github.io/shinyBS/docs/Modals.html#bsModal) for future reference

I worked 8 to 9 hours this week.



## Week 4 (10/16/20)

**Assigned Tasks**
- Change some parameters to be different types of inputs
- Group SD with variables?

**Completed Tasks**
- Submitted a [pull request](https://github.com/BITSS-OPA/opa-deworming/pull/59)
  - Changed some parameters to NumericInput objects
  - Updated images to be transparent (as per Week 3 Notes) and hyperlinked them to respective websites (as per Aleksander's recommendation)

**WIP**
- Trying to figure out what to do with SDs

**Questions/Notes**
- Some parameters could be either Sliders or NumericInput objects. For instance, the costs of treatment and the number of hours worked. I think this is up to personal preference so I left them alone.
- I also left SDs alone since we're deciding how to handle them.
- What is the staff_time_so parameter referring to?
- Are both 'years of treatment' parameters necessary? I think two is redundant
- Hover over parameters for more information? (I found a library to do this but need for implementation depends on our target audience.)
  - What/who is our target audience?
- The SDs Problem:
  - I looked through the catalog of widgets on the website provided in the earlier meeting and found nothing in regards to grouping two widgets together.
  - I think if we really think the SDs are cluttering the panels, then we have a couple of options:
    - A button to reveal a panel for just SDs
    - A pickerInput object to select which SDs will show
    - A separate tabPanel that displays only SDs (could be really confusing; my least preferred method)

I worked 10 to 11 hours this week.



## Week 3 (10/9/20)

**Assigned Tasks**
- Run/Review DW OPA Shiny App
- Create branch to propose changes to Shiny App

**Completed Tasks**
- Reviewed DW OPA Shiny App (broad overview)
- Created branch to propose changes to Shiny App
  - Proposed a few changes and submitted a pull request

**WIP**
- Reviewing DW Shiny App in more detail

**Questions/Notes on DW Shiny App**
- Why is the y-axis missing in the density plot for the Shiny App?
- Are there transparent images for both the BITSS and CEGA logos? I think they would look nicer if the current images had clear backgrounds.
- Should we be more specific regarding the number of times the simulation is run in the Description of Results (i.e. 'x' number of times instead of 'many times')?
  - Probably could make this reactive as well (adjust to user input in Assumptions tab)
- Instead of 2 Assumptions tabs: How do we feel about having 1 tab with the Key Assumptions denoted in some way?
  - I liked the simplicity of the Warren Wealth Tax App (could see everything on 1 screen) and I feel like we can replicate this by having 1 Assumptions tab instead of 2.
- Would like to relabel some of the parameters in the app (particularly the various SD parameters) as they feel unclear
- Feel like some parameters would be better as different types of inputs. (e.g. Teacher Salary input could be a NumericInput object rather than a SliderInput object).

I worked 8-9 hours this week.



## Week 2 (10/2/20)

**Assigned Tasks:**
- Review OPA readme on deworming
- Run DW OPA Shiny app

**Completed Tasks:**
- Reviewed OPA readme on Deworming
- ***Weekend Update***:
  - Worked through Shiny [written tutorials](https://shiny.rstudio.com/tutorial/) (up to Lesson 6)

**Work in Progress:**
- Reviewing DW Shiny App

**Questions/Notes on DW DD:**
- Packages did not automatically install when knitting DW DD. Not sure if this is an error on my end, wondering if others had similar experiences.
- Investigated Half-line break note on line 383 and found this stack overflow [discussion](https://stackoverflow.com/questions/24467036/make-a-half-row-break-br)
- Section 2.1.1.1 of DD would benefit from variable definition that happens just above it in 2.1.1
  - In general, I think variables would be more useful/readable if defined like this (Maybe eliminate need for Appendix in readme?)
- Section 2.1.1.2: Are the proportions of male/female 1/2 each respectively?
- Summary tables at intermittent points in the DD sort of overwhelming?
- Feels like definition of equations reversed. Components of equations are broken down after final equations are shown. Feels counter intutive to me but not sure what standard practice is.
- References in DD missing links to papers:
  - [Baird et al.](http://emiguel.econ.berkeley.edu/research/worms-at-work-long-run-impacts-of-a-child-health-investment)
  - [Hamory et al.](https://www.nber.org/papers/w27611)
  - [Kremer](https://www.povertyactionlab.org/evaluation/illusion-sustainability-comparing-free-provision-deworming-drugs-and-other-sustainable)

**Questions/Notes on DW Shiny App:**
- Binder link in opa-deworming repo leads to wealth tax Shiny App
- Can take-up parameter in Research sub-menu of All Assumptions menu exceed 1?

I've worked 4-5 hours this week. Planning to review DW OPA Shiny App more over the weekend/learn about Shiny more in general.
***Weekend Update***: I worked an additional 3-4 hours during the weekend.



## Week 1 (9/25/20)

**Assigned Tasks:**
- Read OPA Paper
- Read assigned policy analyses
- Review Open Policy Analysis of a Progressive Wealth Tax
- Create folder and weekly report file

**Completed Tasks:**
- Read OPA Paper
- Read assigned policy analyses
- Reviewed Open Policy Analysis of a Progressive Wealth Tax
- Created folder and weekly report file
- Did GitHub desktop-tutorial
- Read through "Hello World" GitHub Guide
- Watched this [GitHub tutorial](https://www.youtube.com/watch?v=iv8rSLsi1xo)
- Read through GitHub tutorials:
  - Pull request basics
  - Understanding the differences between forking and cloning
  - Working with branches

I worked 8 hours during Week 1
