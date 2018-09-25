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
          ## TODO: You can customize the menu links here
          tags$li(class = "active", tags$a(href = "/", "Home")),
          tags$li(tags$a(href = "https://www.niwa.co.nz", "NIWA Web site",target="_blank")),
          tags$li(tags$a(href = "https://en.wikipedia.org/wiki/National_Institute_of_Water_and_Atmospheric_Research",
                          "NIWA Wikipedia page",target="_blank")
          )
        )
      )
    )
  )
}

