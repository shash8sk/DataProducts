library(shiny)
shinyUI(
  pageWithSidebar(
    #Application title 
    headerPanel(" Predicting stopping distance of cars"),
    
    sidebarPanel(
      numericInput('speed', 'speed mph', 10, min = 4, max = 25, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered speed in mph'),
      verbatimTextOutput("inputValue"),
      h4('which resulted in a prediction of stopping distance in feet'),
      verbatimTextOutput("prediction")
    )
  )
)
