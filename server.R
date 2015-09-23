library(shiny)
library(caret)
set.seed(100)

#Creating sample dataset of water useage for various households with varying parameters
wu <- data.frame(members = sample(1:30,100,replace=TRUE), rural=sample(c("y","n"),100,replace=TRUE), garden = sample(c("y","n"),100, replace=TRUE),acreage=sample(0.25:20,100,replace=TRUE),useage=abs(10*rnorm(100)))

# Generating prediction algorithm
# modelfit <- train(useage~., method="rf",data=wu)

shinyServer(
    function(input, output){
#         #         
# #                  newdata <- reactive({data.frame(members=input$ni.mem, rural=input$rb.rur, 
# #                                     garden=input$rb.gar, acreage=input$ti.acr)})
# #         #         
#                  output$pred.useage <- renderText({
#                      rnorm * 5
#                      })
#                  
#                  output$verdict <- renderText({
#                      use <- input$ti.use
#                     
#                      if(use > pred.useage()) {
#                          result = "You Have a Leak !"
#                      }
#                      else {
#                          result = "There's no leak"
#                      }
#                      result
#                 })
        
        output$clas <- renderText({
            class(input$ti.use)
            })
        
        output$verdict <- renderText({
                          
            if(rnorm(1) * as.numeric(input$ti.use)  > 0) {
                result <- "rnorm was +ve "
            }
            else{
                result <- "rnorm was -ve "
            }
            result
            })
        
        
        
    }
)