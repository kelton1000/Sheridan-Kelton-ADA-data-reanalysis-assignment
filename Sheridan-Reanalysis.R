library(readxl)
#Reading in the data from table 1
f <- "/Users/kelton/Desktop/data-reanalysis1.xlsx"
d <- read_excel(f, sheet = 1, col_names = TRUE)
head(d)

#Reading in the data from table 2
f2 <- "/Users/kelton/Desktop/data-reanalysis2.xlsx"
d2 <- read_excel(f, sheet = 1, col_names = TRUE)
head(d2)

