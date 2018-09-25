## Application: R Shiny example with
## Original author NIWA/ITSD cmjt revised as currently outdated logo

library(shiny)

## Load UI customization functions
source('./niwastyleguide.R')

## Define UI for application that draws a histogram
shinyUI(
    fluidPage(
        includeCSS("style.css"), ## call .css file in the same wd
        title = "NIWA Shiny App",
        style = "margin: 0px !important; border: 0px !important; padding: 0px !important;",
        tags$head(
                 tags$div(class="head-im",
                          img(src="https://www.niwa.co.nz/sites/niwa.co.nz/files/niwa-2018-horizontal-final-400_0.png",
                              alt="NIWA horizontal logo",id= "logo"))
             ),
        tags$br(), ## break
        ## two columns layout
        tags$div(class = "row-fluid",
                 sidebarPanel(
                     sliderInput(
                         "bins",
                         "Number of bins:",
                         min = 1,
                         max = 50,
                         value = 30
                     )
                 ),
                 mainPanel(## Main content goes here (simple histogram at the moment)
                     plotOutput("distPlot"))
                 ), ## end of two-column layout
        tags$br(), ## break
        ## footer
        tags$div(tags$footer(class="foot",
                             tags$img(src="NIWA_Rev_Hor_2.png", alt="reverse NIWA logo",height="30",width="70"))
                 )
    )
) ## end of shiny UI
