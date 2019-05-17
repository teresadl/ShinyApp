library(shiny)
library(expss)

# Data
ms_2019 <- read.csv('mass_shootings_2019.csv')

shinyServer(function(input, output) {
        output$shootings <- renderText(count_if(input$State, ms_2019$State))
        })