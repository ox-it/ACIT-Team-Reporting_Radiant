help_menu <-
  tagList(
    navbarMenu("", icon = icon("question-circle"),
      tabPanel("Help", uiOutput("help_base"), icon = icon("question")),
      tabPanel("Videos", uiOutput("help_videos"), icon = icon("film")),
      tabPanel("About", uiOutput("help_about"), icon = icon("info")),
      tabPanel(tags$a("", href = "http://vnijs.github.io/radiant/", target = "_blank",
               list(icon("globe"), "Radiant docs"))),
      tabPanel(tags$a("", href = "https://github.com/vnijs/radiant/issues", target = "_blank",
               list(icon("github"), "Report issue")))
    ),
    js_head
  )

## ui for base radiant
shinyUI(
  navbarPage(
    "ACIT Team Reporting Analysis",
    tabPanel("Radiant App",
             do.call(navbarPage, c("Radiant", nav_ui, shared_ui, help_menu))
             ),
    tabPanel("About this tool",
             fluidPage(
               HTML(
                 paste0("<p>",
                        "This tool uses ",
                        "<a href='http://vnijs.github.io/radiant/'>Radiant</a>",
                        " to provide an interactive tool for exploring the outreach and impact of Oxford University's Academic IT Team (ACIT)",
                        "</p>",
                        "<p>",
                        "Data is collected from ACIT team members through a Google Form and made available in this interactive applications through the use of the ",
                        "<a href='http://www.shinyapps.io'>shinyapps.io</a>",
                        " service.",
                        "</p>",
                        "<p>",
                        "If you have any questions about this tool please email martin.hadley(at)it.ox.ac.uk",
                        "</p>"
                 )
               )
             ))
    
  )
  
)
