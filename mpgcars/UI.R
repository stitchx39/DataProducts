library(shiny)
shinyUI(pageWithSidebar(
    headerPanel('Developing Data Products Course Project'),
    sidebarPanel(
        h3('How to use the application'),
            p('To use the application, enter the gross horsepower and select the number of cylinders and weight of your car below. The predicted MPG will be auto generated at the main panel on your right.'),
            p(),
            h4('Please enter the predictors of MPG below.'),
            numericInput('hp', 'Gross horsepower:', 100, min = 50, max = 500, step = 10), # example of numeric input
            selectInput("cyl", label = "Number of cylinders:", choices = list("4", "6", "8"), selected = "6"), # example of Select input
            sliderInput("wt", "Weight (lbs):", min = 1000, max = 5000, value = c(3000) ) # example of slider input
        ),
        mainPanel(
            h3('Predicted MPG'),
            p('Prediction based on provided inputs:'),
            verbatimTextOutput("inputValues"),
            p('This results in a prediction of the below MPG relative to cars based on the mtcars data set.'),
            verbatimTextOutput("prediction"),
            plotOutput('plots'),
            p(),
            p('Note: The data was extracted from the 1974 Motor Trend US magazine and comprised fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).'),
            p()
        )
))