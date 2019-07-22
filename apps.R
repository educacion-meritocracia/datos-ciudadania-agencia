#Aplicaciones Shinny incluídas en el documento 

#Tabla genérica
shinyApp(
  ui = fluidPage(
    fluidRow(
      column(12,
             dataTableOutput('tabla1')
      )
    )
  ),
  server = function(input, output) {
    output$tabla1 <- renderDataTable(tabla1)
  }
)


#Generar tabla dinámica de información 
shinyApp(
  ui=fluidPage(titlePanel("Base de Datos Agencia"),
               sidebarLayout(
                 sidebarPanel(
                   selectInput("Categoría", "Temática del cuestionario:", choices = 
                                 c("Todos",tabla1$Categoría))
                 ),
                 mainPanel(tableOutput("tabla1"))
               )),
  server=function(input, output){
    output$tabla1 <- renderTable({
      tabla1 <- subset(tabla1, tabla1$Categoría == input$Categoría)
    })
  }, options = list(height = 500))

#Opción 2
shinyApp(
  ui=fluidPage(titlePanel("Base de Datos Agencia"),
               sidebarLayout(
                 sidebarPanel(
                   selectInput("Categoría", "Temática del cuestionario:", choices = 
                                 tabla1$Categoría)
                 ),
                 column(6,
                        tableOutput('tabla1'))
               )),
  server=function(input, output){
    output$tabla1 <- renderTable({
      tabla1 <- subset(tabla1, tabla1$Categoría == input$Categoría)
    })
  }, options = list(height = 500))




datatable(temas1, rownames=FALSE, filter="top", options=list(pageLength=10, scro11X=TRUE)) %>% formatStyle( 'Temática', 'Identificador',  backgroundColor = styleEqual(c("Alumno y Padres", "Alumnos", "Padres"), c('#c7254e', '#083D2E', '#08183D')))






alumnos_padres <- tabla1 %>% filter(Identificador == 'Alumno y Padres')
alumnos <- tabla1 %>% filter(Identificador == 'Alumnos')
padres <- tabla1 %>% filter(Identificador == 'Padres')




ui <- fluidPage(
  title = "Variables del estudio",
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.dataset === "alumnos_padres"',
        checkboxGroupInput("show_vars", "Columnas de la base de datos:",
                           names(alumnos_padres), selected = names(alumnos_padres))
      ),
      conditionalPanel(
        'input.dataset === "alumnos"',
        helpText("Haga clic en el encabezado de la columna para ordenar")
      ),
      conditionalPanel(
        'input.dataset === "padres"',
        helpText("Muestra 5 registros por defecto")
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel("alumnos_padres", DT::dataTableOutput("mytable1")),
        tabPanel("alumnos", DT::dataTableOutput("mytable2")),
        tabPanel("padres", DT::dataTableOutput("mytable3"))
      )
    )
  )
)

server <- function(input, output) {
  
  # choose columns to display
  alumnos_padres2 = alumnos_padres[sample(nrow(alumnos_padres), 100), ]
  output$mytable1 <- DT::renderDataTable({
    DT::datatable(alumnos_padres2[, input$show_vars, drop = FALSE])
  })
  
  # sorted columns are colored now because CSS are attached to them
  output$mytable2 <- DT::renderDataTable({
    DT::datatable(alumnos, options = list(orderClasses = TRUE))
  })
  
  # customize the length drop-down menu; display 5 rows per page by default
  output$mytable3 <- DT::renderDataTable({
    DT::datatable(padres, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  })
  
}
shinyApp(ui, server)
```



# Gráficos bi-variados para las variables del estudio


# Recursos adicionales

Omitir


```{r eruptions, echo=FALSE}
inputPanel(
  selectInput("n_breaks", label = "Number of bins:",
              choices = c(10, 20, 35, 50), selected = 20),
  
  sliderInput("bw_adjust", label = "Bandwidth adjustment:",
              min = 0.2, max = 2, value = 1, step = 0.2)
)

renderPlot({
  hist(faithful$eruptions, probability = TRUE, breaks = as.numeric(input$n_breaks),
       xlab = "Duration (minutes)", main = "Geyser eruption duration")
  
  dens <- density(faithful$eruptions, adjust = input$bw_adjust)
  lines(dens, col = "blue")
})

