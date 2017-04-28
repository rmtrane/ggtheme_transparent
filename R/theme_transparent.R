#' Transparent theme
#'
#' Provides a transparent theme to be used with ggplot2.

#' @export
theme_transparent <- function(base_size = 11, base_family = ''){
  theme_grey(base_size = base_size, base_family = base_family) %+replace%
    theme(axis.text = element_text(size = rel(0.8)),
          axis.ticks = element_line(colour = "black"),
          legend.key = element_rect(fill = "transparent", colour = NA),
          legend.background = element_rect(fill = 'transparent', colour = NA),
          panel.background = element_rect(fill = "transparent", colour = NA),
          panel.border = element_rect(fill = NA, colour = "grey50"),
          panel.grid.major = element_line(colour = "grey85", size = 0.2),
          panel.grid.minor = element_line(colour = "grey90", size = 0.2),
          strip.background = element_rect(fill = "grey70", colour = "grey50", size = 0.2),
          plot.background = element_rect(fill = 'transparent', colour = NA))
}

