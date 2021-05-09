# Introduction

This report summarizes a reproduction attempt for **Twenty-year economic
impacts of deworming** by Joan Hamory, Edward Miguel, Michael Walker,
Michael Kremer, Sarah Baird. It is generated from a
[submission](https://www.socialsciencereproduction.org/reproductions/4043c95e-0a6a-4acc-b228-4c4abe10b3c4/index)
on the [Social Science Reproduction
Platform](https://www.socialsciencereproduction.org/) (SSRP). The
reproduction follows the
[guidelines](https://bitss.github.io/ACRE/improvements.html) outlined by
the [Accelerating Computational Reproducibility in
Economics](https://www.bitss.org/ecosystem/acre/) (ACRE) project. The
reproducer implemented and suggested improvements and robustness checks.

# Revised Package

The revised materials are listed below.
<table>
<thead>
<tr>
<th style="text-align:center;">
Type
</th>
<th style="text-align:left;">
Description
</th>
<th style="text-align:center;">
Link
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;">
Code
</td>
<td style="text-align:left;">
Repository with code, data, and documentation.
</td>
<td style="text-align:center;">
www.github.com/petezh/Reproduction-Deworming
</td>
</tr>
</tbody>
</table>

# Paper Improvements

There were 6 overall improvement(s) to the paper.
<table>
<thead>
<tr>
<th style="text-align:center;">
Type
</th>
<th style="text-align:left;">
Description
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;">
Version Control
</td>
<td style="text-align:left;">
Moved analysis to a version-controlled GitHub repository.
</td>
</tr>
<tr>
<td style="text-align:center;">
File Organization
</td>
<td style="text-align:left;">
Updated the Stata and R files to infer directory, eliminating need for
manual interaction with code.
</td>
</tr>
<tr>
<td style="text-align:center;">
Master Script
</td>
<td style="text-align:left;">
Added a master script to execute the four R scripts without repetitive
library installations or directory conflicts.
</td>
</tr>
<tr>
<td style="text-align:center;">
Open Source_software
</td>
<td style="text-align:left;">
Removed memory, matsize, and maxvar constraints that required the more
expensive Stata SE. New version executes on Stata IC with identical
results.
</td>
</tr>
<tr>
<td style="text-align:center;">
Other
</td>
<td style="text-align:left;">
Swapped Figure 1 and Figure 2 in Worms20_master_main.do, which were put
in the wrong order.
</td>
</tr>
<tr>
<td style="text-align:center;">
Other
</td>
<td style="text-align:left;">
Added a Latex template that contains missing and macros.
</td>
</tr>
</tbody>
</table>

# Future Improvements

There were 2 suggested future improvement(s).
<table>
<thead>
<tr>
<th style="text-align:center;">
Type
</th>
<th style="text-align:left;">
Description
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;">
Open Source_software
</td>
<td style="text-align:left;">
Refactor Stata code into R, a fully open-source software.
</td>
</tr>
<tr>
<td style="text-align:center;">
Dynamic Document
</td>
<td style="text-align:left;">
Move analysis into a documented, R markdown notebook.
</td>
</tr>
</tbody>
</table>

# Robustness Checks

There were 3 robustness checks(s).
<table>
<thead>
<tr>
<th style="text-align:center;">
Variation
</th>
<th style="text-align:left;">
Results
</th>
<th style="text-align:center;">
Impact on Validity
</th>
<th style="text-align:left;">
Explanation
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center;">
Consider only older and male subjects.
</td>
<td style="text-align:left;">
Older males experience a 0.41 USD PPP increase in hourly earnings (as
opposed to 0.14 overall) with a standard error of 0.16, making the
result highly significant.
</td>
<td style="text-align:center;">
Increases in earnings may be driven largely by older males, which should
manifest as highly significant increases for that subset.
</td>
<td style="text-align:left;">
Older and male subjects could experience particularly large increases in
earnings if a society revolves around “male breadwinners.”
</td>
</tr>
<tr>
<td style="text-align:center;">
Consider only older and male subjects.
</td>
<td style="text-align:left;">
Older males experience a 6% increase in the rate of urban residence (as
opposed to 4% overall) with a standard error of 0.03.
</td>
<td style="text-align:center;">
Increases in urban residence may be driven largely by older males, which
should manifest as highly significant increases for that subset.
</td>
<td style="text-align:left;">
Older males may have the greatest mobility and independence.
</td>
</tr>
<tr>
<td style="text-align:center;">
Consider only older and male subjects.
</td>
<td style="text-align:left;">
Older males experience a 4.44 hour increase in weekly non-agricultural
work (as opposed to 1.91 overall) with a standard error of 1.08, making
the result highly significant.
</td>
<td style="text-align:center;">
Increases in professional work may be driven by older males who have
greater access to non-agricultural opportunities.
</td>
<td style="text-align:left;">
Increases in non-agricultural work hours may be driven largely by older
males, which should manifest as highly significant increases for that
subset.
</td>
</tr>
</tbody>
</table>
