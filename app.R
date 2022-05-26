library(shiny)

ui <- fluidPage( #FrontEnd - Which the end users interact
  titlePanel("Control Widgets"),
  fluidRow(
    column(3,
      "hello"
    ),
    column(3,
      "World"
    ),
    column(3,
      "!!!"
    ),
  ),
  fluidRow(
    column(3,
           actionButton("Acceptance", "I Agree"),
           br(),
           br(),
           submitButton("Submit")
    ),
    column(3,
           checkboxInput("Enabled", "Do you wish to enable the feature?"),
           br(),
           br(),
           checkboxGroupInput("prefLocations", h4("Select your preferred Locations: "),
                              choices = list(
                                "Bengaluru" = 1,
                                "Chennai" = 2,
                                "Mumbai" = 3,
                                "Delhi" = 4,
                                "Kolkatta" = 5,
                                "Hyderabad" = 6
                              ),
                              selected = 2
           )
    ),
    column(3,
           dateInput("date", "Select the date"),
           br(),
           br(),
           dateRangeInput("dateRange", "Select the date range")
    ),
  ),
  fluidRow(
    column(3,
           fileInput("imgAdded", "Add a Image:"),
           br(),
           br(),
           numericInput("selNum", "Select a Number", value = 1),
           br(),
           br(),
           helpText("Today is Day 4 of R Shiny",
                    "Training with Soc Gen. ",
                    "We are learning Control Widgets")
    ),
    column(3,
           radioButtons("prefLocation", h4("Select a Location: "),
                        choices = list(
                          "Bengaluru" = 1,
                          "Chennai" = 2,
                          "Mumbai" = 3,
                          "Delhi" = 4,
                          "Kolkatta" = 5,
                          "Hyderabad" = 6
                        ),
                        selected = 2
           ),
           br(),
           br(),
           selectInput("prefLocationsSel", h4("Select your preferred Locations: "),
                              choices = list(
                                "Bengaluru" = 1,
                                "Chennai" = 2,
                                "Mumbai" = 3,
                                "Delhi" = 4,
                                "Kolkatta" = 5,
                                "Hyderabad" = 6
                              ),
                              selected = 2,
                       multiple = TRUE
           )
    ),
    column(3,
           textInput("textInput", "First Name:"),
           br(),
           br(),
           sliderInput("CopyNumbers", "Select the number of copies to be printed:", min = 1, max = 50, value = 1, step = 5)
    ),
  )
)

server <- function(input, output, session) { #ServerEnd or BackEnd - Where the actual data manipulates
  
}

shinyApp(ui, server)
