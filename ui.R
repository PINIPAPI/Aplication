shinyUI(fluidPage(
  titlePanel("My shiny application"),

  sidebarLayout(
    sidebarPanel(h2("Installation"),
                 p("Shiny is available on CRAN, so you can install it in usual way from your R console:"),
                 code("install.packages(shiny)"),
                 br(""),
                 br(""),
                 fluidRow(
                 column(6,
                        selectInput("select", label = h6("Select a variable to display"), 
                                    choices = list("Percent White" = 1, "Percent Black" = 2,
                                                   "Percent Latin" = 3), selected = 3))
                 ),
                 fluidRow(
                 column(6, 
                        sliderInput("slider1", label = h6("Range of interest"),
                                    min = 0, max = 100, value = 50)
                 )
                 ),
                 br(""),
                 br(""),
                 img(src="bigorb.png",height=75,width=82),
                 "shiny is a product of ",
                 span("Rstudio", style = "color:blue")
                 
                 ),
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny is a new package from RStudio that makes it incrdible easy to built interactive web application with R"),
      br(""),
      p("For an introduction and live examples, visit the",a("Shiny Homepage", href="http://www.rstudio.com/shiny")),
      br(""),      
      h2("Features"),
      p("*Build useful web applications with only a few lines of code -no JavaScript required."),
      p("*Shiny application are automatically live in the same way that ",strong("spreadsheets"), "are live. Outputs change instantly as user modify inputs, without requiring a reload of the browser.")
      )
    )
))