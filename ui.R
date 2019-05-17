library(shiny)

# Data
ms_2019 <- read.csv('mass_shootings_2019.csv')

shinyUI(fluidPage(
                titlePanel('Number of Mass Shootings by State in 2019'),
                sidebarLayout(
                        sidebarPanel(
                                p(strong('Documentation:', style = 'color:red'), 
                                  a('Getting Started', href = 'http://rpubs.com/teresadl/ShinyDoc')),
                                h1('Choose a state'),
                                selectInput('State', 'State:', choices = unique(ms_2019$State))
                        ),
                mainPanel(
                        h3('Total Number of Mass Shootings'),
                        textOutput('shootings')
                        )
                )
        )
)