
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("iWatering"),
  sidebarPanel(
    h4('Enter the Weather Parameters'),
    numericInput("temperature", "Temperature in C (-30 - +40): ", 20, -30, 40, 1),
    p(''),
    numericInput("pression", "Pressure (QFE): ", 1022, 950, 1050, 2),
    HTML('<br /><b>Sunny: </b>1011hPa - 1050hPa<br /><b>Cloudy: </b>981hPa - 1010hPa<br /><b>Rain: </b>950hPa - 980hPa'),
    HTML('<br /><br />'),
    #numericInput("wind", "Wind in m/s (1.2 m/s - 25 m/s): ", 2, 0, 25, 0.5),
    numericInput("humidity", "Humidity in % (50% - 100%): ", 70, 50, 100, 5)
  ),
  mainPanel(
    h5('Today you should turn your "Gardena Micro-Drip-System" on for (s):'),
    verbatimTextOutput("pumpDuration"),
    HTML('The value above indicates <b>how long</b> the <b>„Gardena Micro-Drip-System“</b> should be <b>turned on</b> that day to give <b>enough water</b> to plants or <b>flowers</b> in your balcony basket. <br /><b>Assumption:</b> You turn your system only once a day'),
    HTML('<br /><br />'),
    HTML('This summer I trained my <b>Solar</b> Watering System to predict the watering duration for my balcony plants. To learn more about this watering solution, visit my blog page here: <i>http://mikmak.cc/wordpress/category/urban_gardening/</i>'),
    p(''),
    HTML('<b><i>My main suprise is, that pressure doesn\'t matter a lot. It is up to temperature and humidity...</i></b>')
  )
))
