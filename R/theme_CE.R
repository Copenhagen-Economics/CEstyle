theme_CE <- function(){
  font <- "Century Gothic"   #assign font family up front

  theme_minimal() %+replace%    #replace elements we want to change

    theme(

      #grid elements
      panel.grid.major = element_blank(),    #strip major gridlines
      panel.grid.minor = element_blank(),    #strip minor gridlines
      axis.ticks = element_blank(),          #strip axis ticks

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements
      plot.title = element_text(             #title
        family = "Arial Black",            #set font family
        size = 18,                #set font size
        hjust = 0,                #left align
        vjust = 2),               #raise slightly

      plot.subtitle = element_text(          #subtitle
        family = font,            #font family
        size = 14),               #font size

      plot.caption = element_text(           #caption
        family = font,            #font family
        size = 9,                 #font size
        hjust = 1),               #right align

      axis.title = element_blank(),               #font size

      axis.text = element_text(              #axis text
        family = font,            #axis famuly
        size = 9),                #font size

      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 10)),

      legend.text = element_text(
        family = font,
        size = 10),

      legend.title = element_blank(),

      legend.position = "bottom"

    )
}