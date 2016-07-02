library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("actionButton test"),
  sidebarPanel(
    # customized icon: puts png in www folder
    HTML('<button id="goButton" type="button" class="btn btn-default action-button">
         <img src="spade_icon.png" height="20" width="20"/>Button 1</button>')
    ,
    # default button
    actionButton("goButton", "Button 2")
  ),
  mainPanel(
    verbatimTextOutput("nText")
  )
))