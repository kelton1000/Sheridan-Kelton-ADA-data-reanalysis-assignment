library(readxl)
library(ggplot2)
library(tidyselect)
library(dplyr)
#Reading in the data from table 1 in order to make table 2
f <- "/Users/kelton/Desktop/data-reanalysis1.xlsx"
ceramic <- read_excel(f, sheet = 1, col_names = TRUE)
head(ceramic)

summary(ceramic)
#For all of the cells that has a less than symbol, I just made them equal to instead.
s <- group_by(ceramic, Site) %>%
  summarize(
  meanAL = mean(Al),
  meanCA = mean(Ca),
  meanDy = mean(Dy),
  meanMn = mean(Mn),
  meanTi = mean(Ti),
  meanV = mean(V),
  meanK = mean(K),
  meanNa = mean(Na),
  meanAs = mean(As), 
  meanU = mean(U),
  meanLa = mean(La),
  meanYb = mean(Yb),
  meanSb = mean(Sb), 
  meanSm = mean(Sm), 
  meanBa = mean(Ba),
  meanCe = mean(Ce),
  meanCo = mean(Co),
  meanCr = mean(Cr),
  meanCs = mean(Cs),
  meanEu = mean(Eu),
  meanFe = mean(Fe),
  meanTb = mean(Tb),
  meanNd = mean(Nd),
  meanNi = mean(Ni),
  meanSc = mean(Sc),
  meanSr = mean(Sr),
  meanTa = mean(Ta),
  meanTh = mean(Th),
  meanHf = mean(Hf)
  )
s

names(ceramic)
ggplot(data = ceramic, aes(
  x = Cs, 
  y = Ca,
  color = Site,
  group = Site,
  mainTitle = "NAA"
)) + geom_point(aes(shape = Site))+
  scale_shape_manual(values=c(3, 5, 15, 16, 17, 18))

names(ceramic)
ggplot(data = ceramic, aes(
  x = Cr, 
  y = Yb,
  color = Site,
  group = Site
)) + geom_point(aes(shape = Site))+
  scale_shape_manual(values=c(3, 5, 15, 16, 17, 18))




