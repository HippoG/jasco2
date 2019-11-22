# variables for plotting


#' my_theme_addclassic_boxplot
#' 
#' @importFrom ggplot2 theme element_rect element_text unit 

my_theme_addclassic_boxplot <-  theme(strip.background = element_rect(fill = "white", colour = "white"),
                                      strip.text.x = element_text(colour = "black", face = "bold"),
                                      strip.text.y = element_text(colour = "black", face = "bold"),
                                      panel.spacing = unit(1, "lines"),
                                      legend.key.size = unit(3,"mm"),
                                      legend.key.height = unit(1, "lines"),
                                      legend.text = element_text(size = 8),
                                      legend.title = element_text(size = 8, "bold"),
                                      axis.title.y = element_text(size = 8),
                                      axis.title.x = element_text(size = 8),
                                      axis.text.x = element_text(angle = 60, hjust = 1),
                                      strip.text = element_text(size = 8))
