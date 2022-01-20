#Packages
library(tidyverse)
library(palmerpenguins)
penguins

#Question 10, 11, 13
#Question 10
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm))

#Question 11 Color
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species))

#Question 11 Color and Shape
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island))

#Question 13 Columns
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island)) +
  facet_wrap(~ species, nrow = 1)

#Question 13 Grid
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island)) +
  facet_wrap(~ species, nrow = 1) + 
  facet_grid(species ~ island)
