## Importing, Cleaning, Combining 

## Firstly, we have to read in the data files, and save them into tibbles for wrangling/cleaning. 


## when reproducing, set this directory path to wherever you have the raw .csv city files stored 

## setwd("C:/Users/tim/Documents/MSSP/Stat Modeling (MA 678)/Midterm Project/Coding Work")

library(tidyverse)
library(dplyr)
library(gridExtra)

temp = list.files(pattern = "*.csv")
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i]))

Amsterdam <- as_tibble(Amsterdam.csv)
Barcelona <- as_tibble(Barcelona.csv)
Bordeaux <- as_tibble(Bordeaux.csv)
Dublin <- as_tibble(Dublin.csv)
Copenhagen <- as_tibble(Copenhagen.csv)
London <- as_tibble(London.csv)
Madrid <- as_tibble(Madrid.csv)
Nice <- as_tibble(Nice.csv)
Paris <- as_tibble(Paris.csv)
Rome <- as_tibble(Rome.csv)





## Now, for this analysis, we want to sample from each data set so that each city's data consists of the same number of listings. There is >5000 listings within each city data file, and for this analysis, we will sample 2000 within each city. 




sample <- function(data) {
  set.seed(2019)
  return(sample_n(data, 500, replace = F))
  
}

set.seed(2019) 


Amsterdam <- sample(Amsterdam)
Barcelona <- sample(Barcelona)
Bordeaux <- sample(Bordeaux)
Dublin <- sample(Dublin)
Copenhagen <- sample(Copenhagen)
London <- sample(London)
Madrid <- sample(Madrid)
Nice <- sample(Nice)
Paris <- sample(Paris)
Rome <- sample(Rome)

write_csv <- function(name, data){
  
  return(write.csv(x = data, file = name)) 
}

write_csv("Amsterdam.csv", Amsterdam)
write_csv("Barcelona.csv", Barcelona)
write_csv("Bordeaux.csv", Bordeaux)
write_csv("Dublin.csv", Dublin)
write_csv("Copenhagen.csv", Copenhagen)
write_csv("London.csv", London)
write_csv("Madrid.csv", Madrid)
write_csv("Nice.csv", Nice)
write_csv("Paris.csv", Paris)
write_csv("Rome.csv", Rome)
