# Weekly Reports

## Week 2 (Feb. 21 - Feb. 27)

### Assigned Tasks
- [ ] edits to wealth tax DD
- [x] edits to ACRE guidelines
- [ ] methods matter paper

time log: IIIIII

### Questions/Issues

- I created a pull request for adding # Assessment to 04-assess.Rmd
  - I believe this should restore the assessment chapter. However, after doing some testing in my fork of ACRE and the associated Github Pages site the chapter does not show up except under certain conditions. If I knit in RStudio a chapter's specific .Rmd, then when looking at that chapter on the site, the assessment chapter is restored. If I click on a different chapter, whose .Rmd file I have not explicitly knitted, then the assessment chapter disappears.
  - It seems that clicking on a chapter that I've knitted "restores" my ACRE site to a older, unbroken version. Besides the assessment chapter reappearing, the scoping chapter reverts to 3 subsections instead of the current 6 and the reproduction diagrams render properly.
- My fixes for the incorrect list nesting do work after testing in my fork. I am not sure if my fixes for the broken reproduction diagrams were helpful -- in my fork they were never broken, unlike in the actual ACRE site (https://bitss.github.io/ACRE).
  - After merging pull requests to the ACRE repo, do those changes reflect immediately at the ACRE site? The incorrect list nesting is still there.
- The new sections Aleks added to the scoping chapter (2.4 to 2.6) do not show up in 03-scope.Rmd on Github -- I am not sure why.
- All chapters (aside from the missing assessment chapter) are still rendered in the proper order!



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
