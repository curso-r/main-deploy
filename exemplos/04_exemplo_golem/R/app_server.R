#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  output$distPlot <- renderPlot({

    x    <- datasets::faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    graphics::hist(x, breaks = bins, col = "#75AADB", border = "white",
                   xlab = "Waiting time to next eruption (in mins)",
                   main = "Histogram of waiting times")

  })
}
