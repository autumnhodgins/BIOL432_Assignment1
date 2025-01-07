library(dplyr)

#Assignment 1 Script 2

#Reading the csv measurements into a data frame with the same title.
measurements <- read.csv("measurements.csv")

#Checking to make sure that the top of the data looks good.
head(measurements)

#Mutating the data frame to add a new column called Volume.
#Volume is calculated using the formula for the volume of a cylinder using Limb_width and Limb_length.
measurements <- measurements %>% mutate(
  Volume = pi * (Limb_width/2)^2 * Limb_length
)

#Checking the changed data frame.
head(measurements)

#Data looks good, I will overwrite the original measurements csv file with the new data.
write.csv(measurements, "measurements.csv", row.names = FALSE)


