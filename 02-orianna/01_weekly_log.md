# Weekly Progress

## General Tasks
- create pull request on Fridays to merge my local copy of the GitHub w/ the master

## Week 1
Assigned Tasks:
- read the [OPA paper](https://osf.io/preprints/metaarxiv/jnyqh) linked in the powerpoint and write a few sentences summarizing my thoughts on it (1-3 hours)
- read the [dynamic document](http://wealthtaxsimulator.org/analysis/) for the wealth tax --> model for whether future pieces are opinion pieces or policy analysis
- do the [tutorial](https://resources.rstudio.com/the-essentials-of-data-science/getting-started-with-r-markdown-60-02) on R markdown files (1 hour tutorial)
- read the [documentation](https://www.evidenceaction.org/dewormtheworld-2/) on deworming + write a summary of it (if time)


Week 1 Progress:
- Read the OPA paper:  
Public policy suffers from the same kind of reproducibility crisis as has been observed in other empirical sciences. In public policy analysis, it is specifically due to cherry picking of weak evidence, inefficiencies and difficulty in automating systemically recurring reports, and difficulties in drawing clear links between how research and assumptions informs specific analyses. The best way to combat this is to follow the TOP guidelines and to embrace the three principles of open policy analysis: open outputs, open analysis, and open materials.
- finished the R markdown tutorial  

Total time: ~5 hours

## Week 2
Assigned Tasks:
- read the [dynamic document](http://wealthtaxsimulator.org/analysis/) for the wealth tax --> model for whether future pieces are opinion pieces or policy analysis
- look at the Rmd file for the dynamic document (in the [wealthtax repo](https://github.com/oriajia/opa-wealthtax/tree/master/code/dynamic_doc))
  - try to run the Rmd file + try to reproduce the reports
  - note any questions and comments
- read the [documentation](https://www.evidenceaction.org/dewormtheworld-2/) on deworming + write a summary of it (note: spend bulk of time here)

Week 2 Progress:
- read the wealth tax dynamic documentation
- studied and ran the Rmd file for the wealth tax dynamic documentation
- had a cursory look at the deworming website, but not a thorough review

Total time: ~3.5 hours

## Week 3
Assigned Tasks:
- read the [deworming website](https://www.evidenceaction.org/dewormtheworld-2/) on deworming + write a summary of it
- look at the Rmd file for the deworming dynamic document [05_final_opa](https://github.com/oriajia/opa-deworming/blob/master/code/05_final_opa.Rmd)
  - understand the narrative version first
  - review the code, particularly understanding the format of the code chunks (look at the one_run function)
- look at the 00_bones file --> template for future analyses
  - make any suggestions // any irregularities with the deworming Rmd?

Week 3 Progress:
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

Total time: ~9 hours

## Week 4
Assigned Tasks:
- [Update OPA_deworming forked repo](https://github.com/BITSS-OPA/URAP-week-progress/blob/master/04-sophia/02_week_log.md)
  - ask Ryan if any questions
  - from Sophia's wk 2 (1b)
  - take note if there's anything missing from the current instructions
- Detailed summary of the [deworming cost-effectiveness article](https://www.evidenceaction.org/2017-deworming-cost-effectiveness/)
  - ~1 sentence per paragraph
- Summarize [Minimum Wage CBO Report](https://www.cbo.gov/system/files/2019-07/CBO-55410-MinimumWage2019.pdf) (1-2 pages)

Week 4 Progress:

Commits:
Total time:
