#' @export colorblind_pal
colorblind_pal <- function() {
  scales::manual_pal(unname(ggthemes::ggthemes_data$colorblind))
}

#' @export
scale_colour_discrete_orig <- scale_color_discrete_orig <- ggplot2::scale_colour_discrete

#' @export
scale_fill_discrete_orig <- ggplot2::scale_fill_discrete

#' @export
scale_color_discrete <- scale_colour_discrete <- function(...) {
  discrete_scale("colour", "colorblind", colorblind_pal(), ...)
}

#' @export
scale_fill_discrete <- function(...) {
  discrete_scale("fill", "colorblind", colorblind_pal(), ...)
}

#' @export
scale_colour_continuous_2 <- #scale_colour_continuous <-
  function(low = colorblind_pal()(2)[1], high = colorblind_pal()(2)[2], space = 'Lab',
           guide = 'colourbar', na.value = 'grey50', ...) {
    continuous_scale("colour", "colorblind", scales::seq_gradient_pal(low, high, space),
                     guide = guide, na.value = na.value, ...)
  }

#' @export
# scale_fill_continuous <- function(...) {
#   continuous_scale("fill", "colorblind", colorblind_pal(), ...)
# }

