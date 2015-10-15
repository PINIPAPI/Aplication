shinyUI(fluidPage(
  titlePanel("My shiny application"),
  
  sidebarLayout(
    sidebarPanel(h2("Installation"),
                 p("Shiny is available on CRAN, so you can install it in usual way from your R console:"),
                 code("install.packages(shiny)"),
                 br(""),
                 br(""),
                 br(""),
                 br(""),
                 img(src="bigorb.png",height=100,width=111),
                 "shiny is a product of ",
                 span("Rstudio", style = "color:blue")
                 
                 ),
    mainPanel(
      h1("Introducing Shiny"),
      p("A new p() command starts a new paragraph. Supply a style attribute to change the format of the entire paragraph.", style = "font-family: 'times'; font-si16pt"),
      strong("strong() makes bold text."),
      em("em() creates italicized (i.e, emphasized) text."),
      br(),
      code("code displays your text similar to computer code"),
      div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
      br(),
      p("span does the same thing as div, but it works with",
        span("groups of words", style = "color:blue"),
        "that appear inside a paragraph.")
      )
    )
))