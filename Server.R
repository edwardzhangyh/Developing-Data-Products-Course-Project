library(shiny) 

# function to do the prediction depending on regression analysis by R
mpg <- function(cyl, hp, am){ 
    predictedmpg <- 30.888 - 1.127 * cyl - 0.037 * hp + 3.904 * am 
    predictedmpg 
} 
 
shinyServer( 
     function(input, output){ 
         output$ocyl <- renderPrint({as.numeric(input$cyl)}) 
         output$ohp <- renderPrint({as.numeric(input$hp)}) 
         output$oam <- renderPrint({as.numeric(input$am)}) 
               
         # get the prediction result
         output$prediction <- renderPrint({mpg(as.numeric(input$cyl),  
                                               as.numeric(input$hp), 
                                               as.numeric(input$am))}) 
     } 
) 
