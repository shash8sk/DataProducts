library(shiny)
library(datasets)
data(cars)
## The data gives the speed of cars and the distances taken to stop. Note that the data were recorded in the 1920s. 
## A data frame with 50 observations on 2 variables.
## [,1]   speed   numeric   Speed (mph)
## [,2] 	dist 	numeric 	Stopping distance (ft) 

pred <- function(speed) {
  model <-lm(dist ~ speed, data =cars)
  nd=as.data.frame(c(speed))
  predict(model, newdata = nd)
}

shinyServer(
  output  <-function(input,output){
    output$inputValue <- renderPrint({input$speed})
    output$prediction <- renderPrint({pred(input$speed)})
  }
)
