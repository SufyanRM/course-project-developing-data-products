#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predict Diamond Price"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("This is a simple application which predicts Diamond prices based on the characterisitcs provided by the user."),
      h3(helpText("Select:")),
      numericInput("car", label = h4("Carats"), step = 0.01, value = 2),
      selectInput("cut", label = h4("Diamond Cut"), 
                  choices = list("Unknown" = "*", "Fair" = "Fair", "Good" = "^Good",
                                 "Very Good" = "Very Good", "Premium" = "Premium",
                                 "Ideal" = "Ideal")),
      
      selectInput("col", label = h4("Diamond Color"), 
                  choices = list("Unknown" = "*", "D" = "D", "E" = "E",
                                 "F" = "F", "G" ="G",
                                 "H" = "H", "I" = "I",
                                 "J" = "J")),
      selectInput("clar", label = h4("Diamond Clarity"), 
                  choices = list("Unknown" = "*", "I1" = "I1", "SI2" = "SI2",
                                 "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1",
                                 "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF" ))
    ),
    
    # Show a plot of the generated diamond price
    mainPanel(
      plotOutput("distPlot"),
      h4("Our model predicted value: ", textOutput("result"))
    )
  )
))
