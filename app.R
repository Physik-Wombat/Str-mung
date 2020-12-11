library(shiny)
ui <-
  navbarPage(
    strong("StrÃ¶mung durch GefÃ¤Ãe (Hagen â Poiseuillesches Gesetz)"),
    
    tabPanel(
      strong("Versuch 1"),
      titlePanel(
        h4(
          "Fluss in AbhÃ¤ngigkeit von der Druckdifferenz und Widerstandsberechnung"
        )
      ),
      
      tabsetPanel(
        tabPanel("Versuchsaufbau",
                 mainPanel((
                   img(
                     src = "VersuchAufbau1.png",
                     height = 674,
                     width = 1013
                   )
                 ))),
        
        
        tabPanel(
          "Aufgabe",
          br(),
          sidebarPanel(
            "",
            sliderInput(
              inputId = "slider",
              label = "Verschiedene HÃ¶hen wÃ¤hlen:",
              min = 1,
              max = 10,
              value = 1,
              step = 1
            )
          ),
          
          mainPanel(conditionalPanel("input.slider=='1'",
                                     
                                     ((
                                       img(
                                         src = "H1.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='2'",
                                     
                                     ((
                                       img(
                                         src = "H2.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='3'",
                                     
                                     ((
                                       img(
                                         src = "H3.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='4'",
                                     
                                     ((
                                       img(
                                         src = "H4.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='5'",
                                     
                                     ((
                                       img(
                                         src = "H5.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='6'",
                                     
                                     ((
                                       img(
                                         src = "H6.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='7'",
                                     
                                     ((
                                       img(
                                         src = "H7.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='8'",
                                     
                                     ((
                                       img(
                                         src = "H8.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='9'",
                                     
                                     ((
                                       img(
                                         src = "H9.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.slider=='10'",
                                     
                                     ((
                                       img(
                                         src = "H10.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     ))))
        )
      ),
      
      list(tags$head(
        tags$style("body {background-color: #BEBEBE; }")
      ))
    ),
    
    
    
    tabPanel(
      strong("Versuch 2"),
      titlePanel(h4("Fluss in AbhÃ¤ngigkeit vom Rohrradius ")),
      
      tabsetPanel(
        tabPanel("Rohrdurchmesser",
                 br(),
                 mainPanel((
                   img(
                     src = "SdRRohre2.png",
                     height = 674,
                     width = 1013
                   )
                 ))),
        
        
        tabPanel(
          "Aufgabe",
          br(),
          sidebarPanel(
            "",
            radioButtons(
              "typeInput",
              "Verschiedene HÃ¶hen wÃ¤hlen:",
              choices = c("Dickes Rohr", "DÃ¼nnes Rohr"),
              selected = "Dickes Rohr"
            )
          ),
          
          
          mainPanel(conditionalPanel("input.typeInput=='Dickes Rohr'",
                                     
                                     ((
                                       img(
                                         src = "GroÃesRohr2.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.typeInput=='DÃ¼nnes Rohr'",
                                     
                                     ((
                                       img(
                                         src = "KleinesRohr2.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     ))))
        )
      )
    ),
    
    
    
    
    tabPanel(
      strong("Versuch 3"),
      titlePanel(
        h4(
          "Druckverlauf entlang eines Durchflussrohres mit konstantem Innendurchmesser"
        )
      ),
      
      tabsetPanel(
        tabPanel("Versuchsaufbau",
                 br(),
                 mainPanel((
                   img(
                     src = "VersuchAufbau3.jpg",
                     height = 674,
                     width = 1013
                   )
                 ))),
        
        
        tabPanel(
          "Aufgabe",
          br(),
          sidebarPanel(
            "",
            radioButtons(
              "type",
              "Verschiedene HÃ¶hen wÃ¤hlen:",
              choices = c("HÃ¶hen 1", "HÃ¶hen 2"),
              selected = "HÃ¶hen 1"
            )
          ),
          
          
          mainPanel(conditionalPanel("input.type=='HÃ¶hen 1'",
                                     
                                     ((
                                       img(
                                         src = "V3H1.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.type=='HÃ¶hen 2'",
                                     
                                     ((
                                       img(
                                         src = "V3H2.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     ))))
        )
      )
    ),
    
    
    
    tabPanel(
      strong("Versuch 4"),
      titlePanel(
        h4(
          "Druckverlauf entlang eines Durchflussrohres mit unterschiedlichem Innendurchmesser"
        )
      ),
      
      tabsetPanel(
        tabPanel("Versuchsaufbau",
                 br(),
                 mainPanel((
                   img(
                     src = "VersuchAufbau4.jpg",
                     height = 674,
                     width = 1013
                   )
                 ))),
        
        
        tabPanel(
          "Aufgabe",
          br(),
          sidebarPanel(
            "",
            radioButtons(
              "radio",
              "Verschiedene HÃ¶hen wÃ¤hlen:",
              choices = c("HÃ¶hen 1", "HÃ¶hen 2", "HÃ¶hen 3"),
              selected = "HÃ¶hen 1"
            )
          ),
          
          
          mainPanel(conditionalPanel("input.radio=='HÃ¶hen 1'",
                                     
                                     ((
                                       img(
                                         src = "V4H1.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.radio=='HÃ¶hen 2'",
                                     
                                     ((
                                       img(
                                         src = "V4H2.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     )))),
          
          mainPanel(conditionalPanel("input.radio=='HÃ¶hen 3'",
                                     
                                     ((
                                       img(
                                         src = "V4H3.png",
                                         height = 674,
                                         width = 1013
                                       )
                                     ))))
        )
      )
    )
  )



server <- function(input, output) {
}

shinyApp(ui = ui, server = server)
