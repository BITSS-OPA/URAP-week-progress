# Weekly Progress

## General Tasks
- create pull request on Fridays to merge my local copy of the GitHub w/ the master

## Week 1
##### Assigned Tasks:
- read the [OPA paper](https://osf.io/preprints/metaarxiv/jnyqh) linked in the powerpoint and write a few sentences summarizing my thoughts on it (1-3 hours)
- read the [dynamic document](http://wealthtaxsimulator.org/analysis/) for the wealth tax --> model for whether future pieces are opinion pieces or policy analysis
- do the [tutorial](https://resources.rstudio.com/the-essentials-of-data-science/getting-started-with-r-markdown-60-02) on R markdown files (1 hour tutorial)
- read the [documentation](https://www.evidenceaction.org/dewormtheworld-2/) on deworming + write a summary of it (if time)


##### Week 1 Progress:
- Read the OPA paper:  
Public policy suffers from the same kind of reproducibility crisis as has been observed in other empirical sciences. In public policy analysis, it is specifically due to cherry picking of weak evidence, inefficiencies and difficulty in automating systemically recurring reports, and difficulties in drawing clear links between how research and assumptions informs specific analyses. The best way to combat this is to follow the TOP guidelines and to embrace the three principles of open policy analysis: open outputs, open analysis, and open materials.
- finished the R markdown tutorial  

###### Total time: ~5 hours

## Week 2
##### Assigned Tasks:
- read the [dynamic document](http://wealthtaxsimulator.org/analysis/) for the wealth tax --> model for whether future pieces are opinion pieces or policy analysis
- look at the Rmd file for the dynamic document (in the [wealthtax repo](https://github.com/oriajia/opa-wealthtax/tree/master/code/dynamic_doc))
  - try to run the Rmd file + try to reproduce the reports
  - note any questions and comments
- read the [documentation](https://www.evidenceaction.org/dewormtheworld-2/) on deworming + write a summary of it (note: spend bulk of time here)

##### Week 2 Progress:
- read the wealth tax dynamic documentation
- studied and ran the Rmd file for the wealth tax dynamic documentation
- had a cursory look at the deworming website, but not a thorough review

###### Total time: ~3.5 hours

## Week 3
##### Assigned Tasks:
- read the [deworming website](https://www.evidenceaction.org/dewormtheworld-2/) on deworming + write a summary of it
- look at the Rmd file for the deworming dynamic document [05_final_opa](https://github.com/oriajia/opa-deworming/blob/master/code/05_final_opa.Rmd)
  - understand the narrative version first
  - review the code, particularly understanding the format of the code chunks (look at the one_run function)
- look at the 00_bones file --> template for future analyses
  - make any suggestions // any irregularities with the deworming Rmd?

##### Week 3 Progress:
- read the deworming website on deworming:  

Parasitic worm infections, also known as soil-transmitted helminths (STH) and schistosomiasis, interfere with regular bodily processes by decreasing nutrient uptake and thereby contributing to malnourishment and impairment of mental and physical development. EvidenceAction advocates for mass school-based deworming because of the impact on school participation, nutrition and cognition, and the cost-effective nature of mass treatment. Their partnership model focuses on seven components:
1. Policy and Advocacy - working with governments to launch deworming programs and working with "ministries of health and education to establish effective policies and governance structures"
2. Prevalence Surveying and Mapping - working to assess the prevalence and intensity of worm distribution through field surveys
3. Program Planning and Management - working with governments to design their deworming programs, develop operational plans and budgets, coordinate logistics, and providing on-the-ground support
4. Public Awareness and Mobilization - developing locally appropriate campaigns that educate communities about the negative effects of worms, the importance of deworming, and how to prevent further infections
5. Training and Distribution Cascade - supporting governments in the design and coordination of "efficient multi-tier training and distribution cascades" that are tailored to the relevant local context.  
i.e., the cascade from national level --> state level --> teachers (who administer the deworming drugs)
6. Drug Management and Coordination - evaluating appropriate treatment strategies, aiding in drug procurement (including through pharmaceutical donation programs), and developing robust protocols for tracking drug inventories
7. Monitoring and Evaluation - helping governments design systems to monitor and measure effectiveness of programs in achieving intended results. They also conduct independent monitoring to validate such results and to evaluate the impact of the programs in reducing worm prevalence and intensity.  

Active in: Nigeria, Ethiopia, Kenya, Pakistan, India, Vietnam    

Note: some potentially useful links -  
[Summary of the Deworming Evidence](https://www.evidenceaction.org/a-summary-of-the-deworming-evidence-base/)  
[Deworming Cost-Effectiveness](https://www.evidenceaction.org/2017-deworming-cost-effectiveness/)

- looked at the Rmd for deworming
  - made some minor grammatical changes
  - one_run impression: noticed that it contained all the assignments of values to the variables
  - not sure what it's doing in line 1361:
  ```{r}
  invisible( list2env(one_run(),.GlobalEnv) )
  ```
  - some confusion over certain code chunks --> left comments in code (is there a more efficient way to do this?)
  - confusion over the data table under main results
  - some formatting issues with the results table   


- looked at the 00_bones file
  - made some comments/modifications (esp. to the introduction section)
  - clarification: Montecarle Simulations + Sensitivity analysis?
  - conclusions: where should this be placed in the report --> currently at the front, but how should it be structured?

also: oh no -- did I fork the repo right???? some changes appeared which I did not make

###### Total time: ~9 hours

## Week 4
##### Assigned Tasks:
- [Update OPA_deworming forked repo](https://github.com/BITSS-OPA/URAP-week-progress/blob/master/04-sophia/02_week_log.md)
  - ask Ryan if any questions
  - from Sophia's wk 2 (1b)
  - take note if there's anything missing from the current instructions
- Detailed summary of the [deworming cost-effectiveness article](https://www.evidenceaction.org/2017-deworming-cost-effectiveness/)
  - ~1 sentence per paragraph
- Summarize [Minimum Wage CBO Report](https://www.cbo.gov/system/files/2019-07/CBO-55410-MinimumWage2019.pdf) (1-2 pages)

##### Week 4 Progress:
- was unable to update OPA deworming report  
  - ended up attempting to use additional resources like the [Github instructions](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork) instead, found the directions provided by Sophia to be a bit confusing (see below for my comments).  
    - However, continued to have trouble with accessing the command terminal (is this separate from the **command prompt**?)  
  - maybe I need to use GitBash and set up a remote following [these instructions](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/configuring-a-remote-for-a-fork)?
  - unclear which program I should download in order to access GitBash, however, and I can't figure out how to access it via my GitHub Desktop app  


- completed [summary](https://github.com/BITSS-OPA/URAP-week-progress/blob/master/02-orianna/reports%20%2B%20summaries/deworming.md) of the deworming article (can be found in the new reports + summaries folder which I created - see more details below)
- got through ~half of the CBO report, continuing to work on it
- created a new folder to house my summaries and reports (especially the long form ones), so they don't clutter up this document...  
- __Question__: should I be writing my reports in rMarkdown files, or would word files also suffice for the longer reports?

__How to Update a Forked Repo__ ([from Sophia's tutorial/resources](https://gist.github.com/CristinaSolana/1885435), my comments given in *italics*)  

Sophia's steps are as follows:  
a. Clone your fork by putting the following command in terminal:  
- git clone git@github.com:YOUR-USERNAME/YOUR-FORKED-REPO.git
- *is this the correct link? https://github.com/BITSS-OPA/opa-deworming.git*  
- (to get the link: click the green "clone or download" button in your online github repo)  

_my thoughts: could be useful to include more information on how to access the command terminal, also do these steps work on every operating system?_  

b. Put the commands in terminal:  
- cd into/cloned/fork-repo (you can find path by dragging your folder into terminal)
- git remote add upstream git://github.com/ORIGINAL-DEV-USERNAME/REPO-YOU-FORKED-FROM.git
- git fetch upstream
- git pull upstream master

c. Push in your local github desktop app

###### Total time: ~12 hours

## Week 5
##### Assigned Tasks:
- Finish summarizing the [Minimum Wage CBO Report](https://www.cbo.gov/system/files/2019-07/CBO-55410-MinimumWage2019.pdf) (1-2 pages)
  - more detailed than the executive summary
  - keep reports in the .md format  
- Update the forked repo
  - talk with Ryan + Emma to figure out what problems they encountered
  - write a full report that addresses these common problems, perhaps ask Sophia to contribute the MacOS input
- initialize the tutorial repository
  - refer to [this website](https://www.projecttier.org/) for formatting guidance
- Once the deworming repo has been updated
  - proofread the report (05 file) and ensure that all errors are corrected, and ensuring that the bullet points are fleshed out

##### Week 5 Progress:
- finished summarizing the Minimum Wage CBO Report [here](https://github.com/oriajia/URAP-week-progress/blob/master/02-orianna/reports%20%2B%20summaries/federal%20minimum%20wage.md)
- updated personal forked repos
  - got help from Ryan + talked through the issues he also encountered
- created the tutorial repository and shared with everyone on the team  
- wrote/finalized the tutorial on [updating forked repos](https://github.com/BITSS-OPA/Tutorials/blob/master/GitHub/updating%20forked%20repos.md)
  - partially utilized Sophia's tutorial/findings
- worked a little bit on the deworming repository

###### Total time: ~16 hours

## Week 6
##### Assigned Tasks:
- continue to review and flesh out the deworming document

##### Week 6 Progress:
- finished reviewing the deworming md file
- started cataloguing all the areas I believe need additional work (preliminary glance)  

###### Lines that need to be fleshed out:
- __Line 227__: Re-organize the introduction section to better mirror the CBO report.  
  - In general, I found that the deworming document was really methodologically and data focused, rather than giving a more narrative-based explanation. I think that there should be a section that gives context to what deworming is, and what initiatives have taken place. This gives greater insight into the purpose of the cost-benefit analysis. (See previously written summaries for information that would be relevant).  
  - Add a separate section that explains the layout of the report and provides context regarding the OPA aspect of the analysis rather than lumping it in with the summary of the report.  
- __Line 232__: Rather than simply listing the three approaches by author name, I think it would give the report more clarity if a summary for each option was written out.
  - Note: I think the old text is a fairly good summary. *Why was it removed and what are the goals and audience of the analysis - is brevity a concern?*
  - Additionally, how much familiarity do we expect readers to already have with these methodological approaches?
  - Later task: read the cited papers/approaches
- __Line 256__: I believe this section should be more fleshed out to speak about the different measures of success and failure being used to judge the cost-benefit analysis. In general, this section needs more context and more information... it's not clear what the importance of the measures are or why they were chosen.
  - Additionally, the equations in the methodology section are difficult to understand because the variables are not defined. If possible, adding a section where each variable is defined would be very helpful. For example, NPV is defined in the text but B and C are not.
- __Line 300__: what units are t in? It says t = 50 but is that days, hours, etc.?
- __Line 356__: I feel that the summary contained here should be forefronted as it gives a clear explanation of the similarities and differences between the approaches.
- __Tables in 2.2.1__: The tables all have "data" and "researchguesswork" that need to be fixed... a little confused what pi and g represent
- __Line 724__: need to explain the externality and the citation needs to be updated
- __Line 811__: "(or similar?)" <- fix this line, lots of things need to be added
- __Section 2.4, ~Line 2575__: This section should be restructured to similarly mirror the previous two methods/approaches. All the others are in the order of benefit then cost while this section is the opposite.
- __Main Results__: The "Main Results" section needs give a summary of what the findings were for each approach and then give some indication, if the findings are different, as to why that might be. This section is woefully bare and needs a lot more information than just a table of numbers.
- __Monte Carlo Simulation__: This section also needs an explanation. What is its purpose and why is it present in the analysis?
- __Sensitivity Analysis__: This section is blank... clearly needs some additional work
- __References__: Needs to be updated as it appears this section is no longer accurate.

###### My Conclusions/Main Questions:
- the purpose and context of the report needs to be much more clear
- the conclusions of the report and interpretations of the analysis must also be more clear
- a section discussing uncertainty or possible error may be good
- do I need to read the other papers? Are these approaches simply ways to evaluate the cost-effectiveness of deworming? If so, what is the scenario - do they all look at the same data, at the same location. etc.? More information needed about this in the analysis
- the equations and tables could be more clear... at the present, it is somewhat confusing (detail-wise) and poorly formatted
  - for example, if they could have clearer delineations between columns, it would be really helpful
- I found the numbering to be confusing... could we change to a combination of numbers in letters instead of purely numbers or simply omitting numbers altogether?

###### Total time: 8 hours

## Week 7-8
##### Assigned Tasks:
- read the cited papers from the deworming document
- continue learning r/md

##### Week 7-8 Progress:
- read the cited papers from the deworming document
- did some more basic learning about r/md

###### Total time: ~ 18 hours

## Week 9
##### Assigned Tasks:
- write up the notes from the papers
- move all summaries to a new folder in the tutorials repo
- implement the changes we discussed from week 6

##### Week 9 Progress:
- still in the process of typing up notes from the papers
- created a [summaries folder](https://github.com/BITSS-OPA/Tutorials/tree/master/Summaries) in the tutorials repo
- added all of my previously written summaries to the above folder (3 in total)
- updated the ReadMe file in the tutorials repo
- worked on implementing the changes discussed from week 6... still many more need to be added (not all have been finished) --> I am drafting my changes in a document separate from the 005 document so that I can finalize the format first, before messing with the main code [here](https://github.com/oriajia/URAP-week-progress/blob/master/02-orianna/deworming%20changes)
- question: Are we relying primarily on Evidence Action data? Can/should I be looking for/at data for other deworming efforts?

###### Total time: ~12 hours

## Week 10
##### Assigned Tasks:
- write a one sentence summary for each week of what was accomplished
- review any materials developed or learned and convert into relevant tutorials (leave reminders)
  - rmarkdown resources?
- create a bulleted list of tasks of things that should be pursued further
- finish the summaries
- finish up the changes to 005 and implement them

##### Week 10 Progress:
-

###### Total time:
