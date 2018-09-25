##
## Find out more about building applications with Shiny here:
## 
##    http://shiny.rstudio.com/

library(shiny)

## Define server logic required to draw a histogram
## simple example of a histogram from the old faithful dataset
shinyServer(function(input, output) {
    output$distPlot <- renderPlot({
        ## generate bins based on the input$bins from ui.R
        x    <- faithful[, 2] 
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        ## draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
    
})
