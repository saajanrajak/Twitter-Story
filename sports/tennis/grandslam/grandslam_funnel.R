###--- tennis

# Library
library(plotly)


#r.federer
tennis_fig <- plot_ly(
  type = "funnel",
  name ="R. Fedreer",
  orientation = "h",
  y = c("Tournament", "Quarter", "Semis", "Final", "Winner"),
  x = c(77, 57, 46, 31, 20),
  textinfo = "value+percent initial") 

#Nadal

tennis_fig <- tennis_fig %>% 
  add_trace(
    type = "funnel",
    name ="R. Nadal",
    orientation = "h",
    y = c("Tournament", "Quarter", "Semis", "Final", "Winner"),
    x = c(61, 43 ,34, 28, 20),
    textinfo = "value+percent initial") 

# Djokovic N.


tennis_fig <- tennis_fig %>% 
  add_trace(
    type = "funnel",
    name ="N. Djokovic",
    orientation = "h",
    y = c("Tournament", "Quarter", "Semis", "Final", "Winner"),
    x = c(63, 48, 39, 28, 18),
    textinfo = "value+percent initial") 

# final figure

tennis_fig %>% 
  layout(title =  list(text = '<b> Grand Slam Tennis </b>'),
         legend = list(x = 0.8, y = 0.1, title = list(text = '<b> Player </b>')),
         yaxis = list(categoryarray = c("Tournament", "Quarter", "Semis", "Final", "Winner")),
         colorway = c("deepskyblue4", "coral3", "goldenrod1"))
