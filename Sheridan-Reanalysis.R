library(readxl)
library(ggplot2)
library(tidyselect)
library(dplyr)
#Reading in the data from table 1
f <- "/Users/kelton/Desktop/data-reanalysis1.xlsx"
ceramic <- read_excel(f, sheet = 1, col_names = TRUE)
head(ceramic)

summary(ceramic)

s <- summarize(
  ceramic,
  n_cases = n(),
  avgSp = mean(Body_mass_female_mean, na.rm = TRUE),
  avgM = mean(Body_mass_male_mean, na.rm = TRUE)
)
s

names(ceramic)
ggplot(data = ceramic, aes(y = Ca, x = Cs)) + geom_point()



#Reading in the data from table 2
f2 <- "/Users/kelton/Desktop/data-reanalysis2.xlsx"
ceramic2 <- read_excel(f, sheet = 1, col_names = TRUE)
head(ceramic2)

