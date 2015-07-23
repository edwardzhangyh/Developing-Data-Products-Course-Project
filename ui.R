library(shiny) 
shinyUI(fluidPage( 
     titlePanel("Developing Data Products Course Project"), 
     
     sidebarLayout( 
         sidebarPanel(         
             h3("Inputs"), 
             # create select bar for users to input cyl data
             selectInput(inputId="cyl", label=h4("Cylinders"), 
                        choices = list("4" = 4, "6" = 6, "8" = 8), selected=4), 
             # create slider for users to input hp data
             sliderInput(inputId="hp", label=h4("Gross horsepower"), 
                         min=0, max=350, value=0), 
             # create radiobutton for users to input am option 
             radioButtons(inputId="am", label=h4("Transmission"), 
                          choices = list("Manual" = 0, "Automatic" = 1), selected=0), 
              
             submitButton("Submit") 
         ), 
      
         mainPanel( 
           tabsetPanel( 
                 # create documentation to describe the shiny application
                 tabPanel("Documentation", 
                        h3("Application Summary"), 
                        p("This is a shiny application for developing data products course project"),  
 
                        p("The application aims to predict cars' miles/(US)gallon depending on three input variables as below:  
                          1 the car's cylinder type;  
                          
                          2 the car's gross horsepower;  
                          
                          3 the car's transmission types
                          
                          The function used to make the prediction is based on a regression analysis result about data frame "mtcars" in R"), 
                         
                        h3("User Instruction"), 
                        
                        p("To make the prediction,please input the car's cylinder, gross horsepower and transmission information,then press submit button to confirm."), 
                         
                        p("You will get the prediction result about the car's miles per (US) gallon on prediction tab") 
                         ),   
                
                 # create Prediction module to show the input and output result
                 tabPanel("Prediction", 
                        h3("Prediction Results"), 
                         
                        h4("You entered"), 
                         
                        h5("Cylinders"), 
                        verbatimTextOutput("ocyl"), 
                         
                        h5("Gross horsepower"), 
                        verbatimTextOutput("ohp"), 
                         
                        h5("Transmission"), 
                        verbatimTextOutput("oam"), 
                         
                        h4("Predicted miles per (US) gallon"), 
                        verbatimTextOutput("prediction")                            
                        ) 
                      )             
                   ) 
         ) 
 )) 
