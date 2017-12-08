# This file contains custom functions for NIWA Style guide. You are free to edit the links, and menu items.
# Colours, and position of certain elements will be automatically determined for your application.
# Search for TODO to locate where to change links.

#' Add the application menu from NIWA.
#'
#' You can customize the menu links in this function.
niwaMenu <- function() {
  tags$div(
    class = "navbar navbar-default",
    role = "navigation",
    tags$div(
      class = "container-fluid",
      tags$div(
        class = "navbar-header",
        tags$button(
          type = "button",
          class = "navbar-toggle",
          `data-toggle` = "collapse",
          `data-target` = ".navbar-collapse",
          tags$span(class = "sr-only", "Toggle navigation"),
          tags$span(class = "icon-bar"),
          tags$span(class = "icon-bar"),
          tags$span(class = "icon-bar")
        )
      ),
      tags$div(
        class = "collapse navbar-collapse",
        tags$ul(
          class = "nav navbar-nav",
          # TODO: You can customize the menu links here
          tags$li(class = "active", tags$a(href = "/", "Home")),
          tags$li(tags$a(href = "https://www.niwa.co.nz", "NIWA Web site")),
          tags$li(
            tags$a(href = "https://en.wikipedia.org/wiki/National_Institute_of_Water_and_Atmospheric_Research", "NIWA Wikipedia page")
          )
        )
      )
    )
  )
}

#' Add the NIWA banner, normally at the top.
#'
#' @param title The application title. Defaults to 'NIWA R Shiny Application'
#' @param link The application link. Defaults to 'https://www.niwa.co.nz/'
niwaBanner <- function(title = "NIWA R Shiny Application", link = "https://www.niwa.co.nz/") {
  tags$div(class = "banner",
           role = "banner",
           tags$div(class = "container-fluid",
                    tags$div(
                      class = "row",
                      # Set the title of your application here
                      tags$a(title,
                             class = "logo",
                             href = link)
                    )))
}

#' Add the applicatoin footer from NIWA.
#'
#' You can customize the footer links in this function.
niwaFooter <- function() {
  tags$footer(role = "contentinfo",
              tags$div(class = "container",
                       tags$div(
                         class = "row",
                         tags$a(href = "/", class = "logo"),
                         tags$ul(
                           # TODO: You can customize the header links here
                           tags$li(
                             tags$a(href = "https://www.niwa.co.nz/privacy-policy", "NIWA Privacy Policy")
                           ),
                           tags$li(id = "copyrightNiwa", class = "pull-right", "Copyright 2017 NIWA")
                         )
                       )))
}