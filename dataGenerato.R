install.packages("tidyverse")
library(tidyverse)

#Assignment 1 Script 1

#Making list of five pigeon species, then randomly sampling from this list to get a list of length 100.
species_names_list <- c("Patagioenas fasciata", "Patagioenas araucana", "Patagioenas caribaea", "Patagioenas leucocephala", "Patagioenas squamosa")
species_names <- sample(species_names_list, 100, replace = TRUE)

#Making a list of limb widths by randomly sampling around a mean of 1.2, setting it so absolute so that I do not get 0 or negative values.
limb_width <- abs(rnorm(100, mean = 1.2, sd = 1))

#Making a list of limb length by randomly sampling around a mean of 6.5, setting it so absolute so that I do not get 0 or negative values.
limb_length <- abs(rnorm(100, mean = 6.5, sd = 1))

#Making list of three observer names, then randomly sampling from this list to get a list of length 100
observer_names_list <- c("Bryan G", "Mia R", "Grant S")
observer <- sample(observer_names_list, 100, replace = TRUE)

#Combining all of the vectors I have created into a data frame called measurements.
measurements <- data.frame(
  Organism = species_names,
  Limb_width = limb_width,
  Limb_length = limb_length,
  Observer = observer
)

#Writing this data frame to a csv file.
write.csv(measurements, "measurements.csv", row.names = FALSE)

#Checking the data with head
head(measurements)

#The data frame looks correct.



