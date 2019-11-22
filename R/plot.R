# default plot ------------------------------------------------------------

#' jasco_boxplot
#'
#' fast n' easy default plot!
#' 
#' 
#' @param df data to plot
#' @param x x-axis
#' @param a facet_v
#' @param b facet_h
#' @keywords jasco
#' @importFrom magrittr %>%
#' @importFrom rlang enquo !! ensym ensyms enquos is_installed
#' @importFrom ggplot2 ggplot geom_boxplot geom_point aes facet_grid vars
#' @importFrom ggsci scale_colour_npg
#' @export
#' @examples
#' jasco_boxplot()

jasco_boxplot <- function(df, x, ...) {
  x <- ensym(x)
  args <- ensyms(...)

  p <- ggplot() +
    geom_boxplot(data = df$data, mapping = aes(x = !!x, y = turnover, colour = !!!args)) +
    geom_point(data = df$data, mapping = aes(x = !!x, y = turnover, colour = !!!args)) +
    facet_grid(rows = vars(!!!args), cols = vars(!!!args))
  
  # if(is_installed("ggsci")) {p + scale_colour_npg()}
  # else {p}
  
}

jasco_boxplot_2 <- function(df, x, colour, rows) {
  x <- ensym(x)
  colour <- ensym(colour)
  rows <- ensym(rows)
  
  p <- ggplot() +
    geom_boxplot(data = df$data, mapping = aes(x = !!x, y = turnover, colour = !!colour)) +
    geom_point(data = df$data, mapping = aes(x = !!x, y = turnover, colour = !!colour))
  
  p + facet_grid(rows = vars(!!!rows))
  
  
    # facet_grid(rows = vars(!!!args), cols = vars(!!!args))
  
  # if(is_installed("ggsci")) {p + scale_colour_npg()}
  # else {p}
  
}




jasco_boxplot_3 <- function(df, x, colour, facet_row = ., facet_col) {
  x <- ensym(x)
  colour <- ensym(colour)
  facet_row <- ensym(facet_row)
  facet_col <- ensym(facet_col)
  
  p <- ggplot() +
    geom_boxplot(data = df$data, mapping = aes(x = !!x, y = turnover, colour = !!colour)) +
    geom_point(data = df$data, mapping = aes(x = !!x, y = turnover, colour = !!colour)) +
    facet_grid(rows = vars(!!facet_row), cols = vars(!!facet_col))
  p
  
}
