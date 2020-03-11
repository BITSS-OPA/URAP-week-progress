library(shiny)
library(datasets)
crime_data_normal = data.frame(USArrests)
rownames(USArrests)
crime_data = data.frame(t(USArrests))

ui = fluidPage(
  # Page Title
  titlePanel("US Crime by State"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("state", "State:", 
                  choices=colnames(crime_data)),
      helpText("Data from World Almanac and Book of facts 1975.")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("crimePlot")  
    )
    
  )
)

server = function(input, output){
  # Fill in the spot for a plot
  output$crimePlot = renderPlot({
    
    # Render a barplot
    barplot(crime_data[,input$state], 
            names.arg = rownames(crime_data),
            main=input$state,
            ylab="Crime Rate per 100,000 residents",
            xlab="Crime Types")
  })
}

shinyApp(ui = ui, server = server)
