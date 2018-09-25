## Application: R Shiny example with
## Original author NIWA/ITSD cmjt revised as currently outdated logo

library(shiny)

## Define UI for application that draws a histogram
shinyUI(
    fluidPage(
        includeCSS("style.css"), ## call .css file in the same wd
        title = "NIWA Shiny App",
        style = "margin: 0px !important; border: 0px !important; padding: 0px !important;",
        tags$head(
                 tags$div(class="head-im",
                          tags$a(href = "https://www.niwa.co.nz",
                                 tags$img(src="https://www.niwa.co.nz/sites/niwa.co.nz/files/niwa-2018-horizontal-final-400_0.png",
                                          alt="NIWA horizontal logo",id= "logo"), target = "_blank"),
                          tags$span(class="blank"),## blank horiz space
                          tags$span(class="center-sp",tags$strong("NIWA Shiny App"))) ## change text to App name
                 
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
                             tags$a(href = "https://www.niwa.co.nz",
                                    tags$img(src="NIWA_Rev_Hor_2.png", alt="reverse NIWA logo",height="30",width="70"),
                                    target = "_blank"),
                             ## list of links for footer
                             tags$ul(tags$li(tags$a(href = "https://www.niwa.co.nz/privacy-policy", "NIWA Privacy Policy",
                                                    target = "_blank")),
                                     tags$li(id = "copyrightNiwa", "Copyright 2018 NIWA"))
                             )
                 )
    )
) ## end of shiny UI
