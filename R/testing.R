library(ggthemes)
library(ggplot2)

library(ggplot2)

detach('package:ggthemeTransparent', unload = TRUE); library(ggthemeTransparent)
#colorblind_pal()(2)

theme_set(theme_transparent())

scale_colour_continuous_2 <- #scale_colour_continuous <-
  function(low = colorblind_pal()(8)[6], high = colorblind_pal()(8)[7], space = 'Lab',
           guide = 'colourbar', na.value = 'grey50', ...) {
    continuous_scale("colour", "colorblind", scales::seq_gradient_pal(low, high, space),
                     guide = guide, na.value = na.value, ...)
  }

ggplot(data.frame(x = 1:10, y = (1:10)),
       aes(x = x, y = y, colour = y)) +
  geom_point() + scale_colour_continuous_2()


ggplot(data.frame(x = 1:10, y = factor(1:10)),
       aes(x = x, y = y, fill = y)) +
  geom_bar(stat = 'identity')

