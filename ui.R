library(shiny)
library(caret)
set.seed(100)

shinyUI(fluidPage(
    titlePanel("Do you have a Leak ?"),
    sidebarLayout(
        sidebarPanel(
#             numericInput("ni.mem","Number of Household Members",5,min=0,max=30,step=1),
#             radioButtons("rb.rur", "Is your home in a rural area ?", c("Yes", "No")),
#             radioButtons("rb.gar", "Do you have a Vegetable Garden ?", c("Yes", "No")),
#             textInput("ti.acr", label="What is the size of your land (in acres)"),
            textInput("ti.use", label="What is your monthly water useage (litres)"),
            submitButton("submit")
            
            
        ),
        mainPanel(
#            verbatimTextOutput("output$pred.useage"),

            verbatimTextOutput("clas"),
            verbatimTextOutput("verdict")
            
            
        )
        
        
        
        
    )
))