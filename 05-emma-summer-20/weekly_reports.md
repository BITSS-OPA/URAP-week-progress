# Weekly reports of progress

## Week 1 (5/18)

- Read the ACRE guidelines for computational reproducibility  
  - read chapters 1-3 in depth, read chapter 4 and skimmed the rest
- Fix any typos or glaring errors in the github repo: https://github.com/BITSS/ACRE/  
  - corrected typos in introduction, chapter 1, 2, 3
  - didn't correct typos in chapters that are still under construction
- Comment on any sections that are confusing or that you don't understand.    
  - (note for myself) shortcut to comment out text in Rmd: shift + command + C
  - added comment in scope: I don't completely understand "preferred specification"  
- Clean the URL entries using regular expressions.     
  - first tried to learn more about regular expressions by reading [this chapter on strings](https://r4ds.had.co.nz/strings.html)
  - learned about [DOI Basics](https://support.datacite.org/docs/doi-basics) - prefix starting with '10.' and then a 4+ digit number, then a suffix which can be any string
    - this led me to [this blog post on using regular expressions to match DOIs](https://www.crossref.org/blog/dois-and-matching-regular-expressions/), which had a regular expression `/^10.\d{4,9}/[-._;()/:A-Z0-9]+$/i` that matches 74.4M of 74.9M DOIs; modified to work in R: `regex("10\\.\\d{4,9}/[-._;()/:a-z0-9]+$", ignore_case=T)`
  - was able to clean by first isolating DOI, then splitting string by "." and then combined the separated strings again to remove the extra periods to get all DOIs in the format *10.xxxx/suffix*
    - I think *one possible concern* is that this assumes that the suffix starts with some characters, followed by a ".", then some other digits (e.g. aer.10052204, aer.20101199); I don't think this would work if the suffix didn't contain a "." at all. In theory a DOI's suffix could be any string, but the suffixes in the survey responses were all similar because they were all from the American Economic Review.
  - **update: I think it's important to keep the suffix as is,** i.e. 10.1257/aer.100.5.2205 and not 10.1257/aer.10052205. I removed my work starting from the step that splits the string by ".".
- Watched [this introduction to bookdown video](https://www.youtube.com/watch?v=dVqVscgwSpw)
- Updated your report of progress by the end of the week.  



## Week 2 (5/26)  

- Read Survey 1 and 2.
- Pilot report (`02_report_on_pilot.Rmd`):   
  - Specific fixes  
      - Sort rows of tables  
      - Add percentages and totals  
  - Clean paper-level data
  - Add tables
