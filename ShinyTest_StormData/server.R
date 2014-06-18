library(UsingR)
library("lattice")

setwd( "C:/Data Scientist/9-Dev Data Tool/Project/ShinyTest_StormData")

fatalities <- readRDS("fatalities.rds")

injuries <- readRDS("injuries.rds")

ecocost <- readRDS("ecocost.rds")

TrendData <- readRDS("TrendData.rds")

shinyServer(
        function(input, output) {
                output$newPlot <- renderPlot({
                        if (input$plotType == "None" | input$outcome == "None"){
                                par(mfrow=c(1,2))
                                plot(c(0,as.numeric(input$value)), c(0,as.numeric(input$value)), type="l", lwd=7, xlab="", ylab="",
                                     main = "Select colors you want and play with slider !!! .... Just for fun")
                                for (i in 1:length(input$col))
                                        lines(c(i,as.numeric(input$value)), c(i,as.numeric(input$value)), type="l", col=input$col[i], lwd=7, xlab="", ylab="")
                                plot(c(0,as.numeric(input$value)), c(as.numeric(input$value),0), type="l", col="orange", lwd=7, xlab="", ylab="")
                                for (i in 1:length(input$col))
                                        lines(c(i,as.numeric(input$value)), c(as.numeric(input$value),i), type="l", col=input$col[i], lwd=7, xlab="", ylab="")
                        }
                        else if (input$plotType == "global")
                                {
                                if (input$outcome == "Fatalities") { 
                                          barchart(FATALITIES ~ EVTYPE, data = fatalities,
                                          stack = FALSE,
                                          auto.key = list(space = "right"), col=input$col1,
                                          main = "USA : Total fatalities greater than 200 from 1950 to 2011 By Type Event",ylab=" ",
                                          scales = list(x = list(rot = 45)))
                                 }
                                 else if (input$outcome == "Injuries"){
                                         barchart(INJURIES ~ EVTYPE, data = injuries,
                                                  stack = FALSE,
                                                  auto.key = list(space = "right"), col=input$col2,
                                                  main = "USA : Total injuries greater than 1000 from 1950 to 2011 By Type Event",ylab=" ",
                                                  scales = list(x = list(rot = 45)))
                                 }
                                 else if (input$outcome == "Eco Cost"){
                                          barchart(ecocost/1000000000 ~ EVTYPE, data = ecocost,
                                                 stack = FALSE,
                                                 auto.key = list(space = "right"), col=input$col3,
                                                 main = "USA : Economic Cost greater than 6 billions from 1950 to 2011 By Type Event", ylab="Billions",
                                                 scales = list(x = list(rot = 45)))
                                 }
                                }
                                else if (input$plotType == "trend")
                                {
                                        if (input$outcome == "Fatalities") { 
                                               plot(TrendData$Year, TrendData$FATALITIES, type = "h", col = input$col1, lwd = 5, ylab=" ", xlab=" ",
                                                     main = "USA : Fatalities Trend from 1950 to 2011"
                                                )
                                        }
                                        else if (input$outcome == "Injuries"){
                                                plot(TrendData$Year, TrendData$INJURIES, type = "h", col = input$col2, lwd = 5, ylab=" ", xlab=" ",
                                                     main = "USA : Injuries Trend from 1950 to 2011"
                                                )
                                        }
                                        else if (input$outcome == "Eco Cost"){
                                                plot(TrendData$Year, TrendData$ecocost/1000000000, type = "h", col = input$col3, lwd = 5, ylab="Milliards", xlab=" ",
                                                     main = "USA : Economic Cost Trend from 1950 to 2011"
                                                )
                                        }
                                }
                                          })
        }
)
