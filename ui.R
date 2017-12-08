# Application: R Shiny example with NIWA Style guide (https://styles.niwa.co.nz).
# Author: NIWA/ITSD
# Source: https://git.niwa.local/ITSD/shiny-styleguide
# Issues: https://git.niwa.local/ITSD/shiny-styleguide/issues
# For more information: https://styles.niwa.co.nz

library(shiny)

# Load UI customization functions
source('./niwastyleguide.R')

# Define UI for application that draws a histogram
shinyUI(
  fluidPage(
    theme = "https://styles.niwa.co.nz/dist/css/bootstrap.min.css",
    style = "margin: 0px !important; border: 0px !important; padding: 0px !important;",
    # NIWA Style guide. See https://styles.niwa.co.nz for more.
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "https://styles.niwa.co.nz/dist/css/bootstrap-theme.min.css")
    ),
    
    # NIWA Banner
    niwaBanner(title = 'NIWA R Shiny App', link = 'https://github.com/niwa/'),
    
    niwaMenu(),
    tags$br(class = "clearfix;"),
    
    # two columns layout
    tags$div(class = "row-fluid",
             sidebarPanel(
               # TODO: your sidebar content goes here
               sliderInput(
                 "bins",
                 "Number of bins:",
                 min = 1,
                 max = 50,
                 value = 30
               )
             ),
             mainPanel(# TODO: your main content goes here
               plotOutput("distPlot"))),
    
    niwaFooter(),
    
    # Placed at the end of the document so the pages load faster
    tags$head(
      tags$script(src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"),
      tags$script(src = "https://styles.niwa.co.nz/dist/js/bootstrap.min.js")
    )
  )
) # end
