library(tidyverse)
library(palmerpenguins)
penguins
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island)) +
  facet_wrap(~ species, nrow = 1) + 
  facet_grid(species ~ island)
