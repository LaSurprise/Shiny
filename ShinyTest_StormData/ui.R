## Define UI
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel("Shiny App Test With Storm Data"),
        
        # Sidebar with controls to select a dataset and specify
        # the number of observations to view
        sidebarPanel(
                flowLayout(
                selectInput(
                        "plotType", "Category",
                        c("None", "More Harmful" = "global",
                          "Trend" = "trend"), selected = "trend"),
                selectInput("outcome", "Outcome",
                            choices = c("None","Fatalities", "Injuries", "Eco Cost"), selected = "Fatalities")
                ),
                h5('===================='),
                flowLayout(
                radioButtons("col1", "Fatalities",
                                   c("Blue" = "blue",
                                     "Red" = "red",
                                     "Yellow"="yellow",
                                     "Green" = "green",
                                     "Grey" = "grey",
                                     "Orange" = "orange",
                                     "Black" = "black"), selected = "red"), 
                radioButtons("col2", "Injuries",
                             c("Blue" = "blue",
                               "Red" = "red",
                               "Yellow"="yellow",
                               "Green" = "green",
                               "Grey" = "grey",
                               "Orange" = "orange",
                               "Black" = "black"), selected = "orange"),
                radioButtons("col3", "Eco Cost",
                             c("Blue" = "blue",
                               "Red" = "red",
                               "Yellow"="yellow",
                               "Green" = "green",
                               "Grey" = "grey",
                               "Orange" = "orange",
                               "Black" = "black"), selected = "grey")
                ),
                h5('===================='),
                h4('Set Category or Outcome = "None"'),
                flowLayout(
                        checkboxGroupInput("col", "Colors :",
                                           c("Blue" = "4",
                                             "Red" = "2",
                                             "Yellow"="7",
                                             "Green" = "3",
                                             "Grey" = "8",
                                             "Black" = "1",
                                             "Cyan" = "5",
                                             "Red Blue" = "6")),
                        sliderInput("value", "Slider :", 1, 30, 9)
                        
                )
                
                               
        ),
                
                # Show a plot of the generated distribution
                mainPanel( 
                        plotOutput('newPlot')
                        
                )
))
