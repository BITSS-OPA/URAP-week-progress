# Week 10

### Tasks
1. Recreate main figure (under Montecarlo Simulations) of dynamic document using plotly; explore what components could/should be made interactive  

* First installed plotly package (install.packages("plotly")), loaded package under Results/Viz using `library(plotly)` but maybe move to a better spot

I was able to use plotly's built in `ggplotly()` function to convert a ggplot2 figure into a plotly object. This worked to create an interactive version of the figure, but removed some details like number of simulations and number of seconds to run.  
 - can modify with style(), layout() functions

Alternatively, I tried to recreate the visualization using `plot_ly`, but wasn't able to create the same smoothed density figure as before. Moving forward, should I try to modify the figure created with ggplotly, or keep trying to create from scratch using plotly?

I worked for **11 hours** this week.
