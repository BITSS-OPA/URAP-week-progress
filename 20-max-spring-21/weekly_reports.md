# Weekly Reports

## Week 9 (Apr. 11 - Apr. 17)

- continue working on 'Twenty-year economic impacts of deworming' reproduction
  - [ ] complete assessment

I worked IIIII hours this week



## Week 8 (Apr. 4 - Apr. 10)

- [x] submit 'Gender Bias among Professionals' reproduction
  - [ ] submit problem with saving in Assessment to ACRE_platform_issues
    - will submit when I can provide steps to reproduce issue
  - [x] illustrate problem with erroneous 'CYCLE DETECTED' in diagram builder to ACRE_platform_issues
- [x] begin 'Twenty-year economic impacts of deworming' reproduction
  - [x] complete scoping
  - [ ] complete assessment
    - issues with reproduction -- documented in `notes.md` in repository

I worked 10 hours this week



## Week 7 (Mar. 28 - Apr. 3)

- uploaded housing gap .pdf and .Rmd
- about to submit Gender Bias reproduction
  - added all data and code and built diagram
  - assessed reproducibility
  - minor improvements: some broken filepaths (discussed on Slack)
- looked back at Methods Matter reproduction
  - finished scoping and starting Assessment

I worked 9 hours this week



## Week 6 (Mar. 21 - Mar. 27)

- Spring break!



## Week 5 (Mar. 14 - Mar. 20)

### Assigned Tasks

- [x] assist with policy analysis for Housing and Homelessness panel
  - made .Rmd file describing discrepancy between McKinsey's 3.5 mn homes estimate and Livable California/Embarcadero Institute's 1.5 mn homes estimate
- [x] begin Gender Bias among Professionals reproduction
  - scoped paper and looked at reproduction package

I worked 9 hours this week

### Notes

- reproduction package is 3.6 GB, some files are too large to be uploaded to GitHub -- do I need to host my revised reproduction package at a separate host?
- I plan to work next week over break!



## Week 4 (Mar. 7 - Mar. 13)

- I took a midterm token this week



## Week 3 (Feb. 28 - Mar. 6)

### Assigned Tasks

- [x] work on methods matter reproduction
  - scoping: main claim is that p-hacking varies by greatly by method, but might consider other three claims as well in second attempt
    - paper did not use typical econometric methods (IV, DID, RDD, RCT) but other statistical tests for essentially anomalies or goodness of fit
  - assessment: familiarized self with Stata and managed to generate the figures and tables used
  - improvement: raw data is either missing or manually constructed -- will have to take closer look at authors' process
  - robustness: the authors provide over 100 separate figures and dozens of tables testing a huge variety of possibilities -- robustness check probably not necessary?

I worked 10 hours this week

### Notes

- submitted a small pull request to fix reproduction diagrams in the assessment chapter for ACRE. will keep looking for broken formatting
  - remember to re-fork ACRE repo

methods matter
- error in `Readme.pdf`: `setup.do` not `make setup.do`
- `.dta` and `.do` files do not come in folders like the `Readme.pdf` says they do
- will the revised reproduction package I have on GitHub need to be copied to a trusted repository ('Dataverse, openICPSR, Figshare, Dryad, Zenodo, Open Science Framework' mentioned in ACRE)?



## Week 2 (Feb. 21 - Feb. 27)

### Assigned Tasks
- [ ] edits to wealth tax DD
- [x] edits to ACRE guidelines
- [ ] methods matter paper

I worked 8 hours this week

### Issues/Comments

ACRE GUIDELINES: In summary, issues seem to arise because
1. The live site (https://bitss.github.io/ACRE) reflects the changes Aleks made a day ago, but the Github repository does not. Specifically, it seems the final ACRE_book.html file (which is used to render the live site?) is updated, but the .Rmd files that generate it are not.
2. After Aleks' changes, the assessment chapter disappeared and reproduction diagrams failed to render properly. Knitting the book from the unupdated .Rmd files fixes these issues, but of course we lose Aleks' revisions.

- I created a pull request for adding `# Assessment` to 04-assess.Rmd. This should make the assessment chapter reappear.
- My fixes for the incorrect list nesting do work after testing in my ACRE fork. I am not sure if my fixes for the broken reproduction diagrams were necessary: I was editing the unupdated .Rmd files whose diagrams already displayed correctly.
  - I will need to see what changed in Aleks' .Rmd files that caused the diagrams to break.
  - I am wondering what needs to be done for the changes I sent pull requests for last night to reflect on the ACRE site. I know that after knitting the .Rmd files locally and pushing changes to my ACRE fork, the changes showed up immediately on my own site (https://myzhang01.github.io/ACRE).
- All chapters (aside from the missing assessment chapter) are still rendered in the proper order!

Methods Matter: I am reading through the paper and studying each figure/table (including in the online appendix). I have an idea of which ones to reproduce, but I have not yet had the chance to start a reproduction on SSRP or look through the provided reproduction package.

Wealth tax OPA: Unfortunately I haven't yet sketched up revisions to the app/edited the DD :(



## Week 1 (Feb. 14 - Feb. 20)

### Assigned Tasks

- [x] read OPA paper
- [x] read ACRE guidelines
- [x] Rmarkdown tutorials
- [x] review wealth tax and deworming app and dynamic documentation
- [x] come up with questions (~10) then meet at the end of the week to discuss those questions. submit unsolved questions in your weekly report so we can discuss during next meeting.

I worked 8 hours this week

### Notes

- Our onboarding meeting (between Gabriel, Rohan, Sreeja, and myself) is happening at 5pm, so all of our questions, solved or unsolved, will be submitted to the weekly report. We will let you know which ones have been solved next week :)

### Questions/Thoughts

- bigger picture/historical context of open science and open policy analysis?
- commit vs pull request vs push request
- forks vs branches
- how do policy makers actually interact with final output?
- wealth tax app suggestions
    - clear visual/verbal indication of what you are allowed to change and what effect that has
    - guide/refresher of what certain components mean (dropdown info menus)
        - intro to models, parameters, etc.?
    - revise graph?
    - conceptual explanation (and practical guide?) for git/github
- winners and losers after change to OPA (think 172 botswana paper)
- acre guidelines:
    - indented lists in ch4-5?
    - better way to display extremely long reproduction tree?
- wealth tax DD:
    - `return( sapply( ls(pattern= "_so\\b"), function(x) get(x) ) )` what does this line do
    - 1% addl tax on billionaires: 2% of wealth above 50mn + 1% of wealth above 1bn?
    - get_tax_rev function
    - edits? typos, more comments, etc. (or is wealth tax a finished project)
    - section 6 tests (how do these work?)
