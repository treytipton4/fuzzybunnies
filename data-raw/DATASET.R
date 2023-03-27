## code to prepare `xyz_fuzzybunnies` dataset goes here

x <- c(1.1, 2.5, 3.9)
y <- c(4, 5, 6)
z <- c("Hello", "Hi", "Hey")
xyz_fuzzybunnies <- data.frame(x, y, z)

usethis::use_data(xyz_fuzzybunnies, overwrite = TRUE)

Name <- c("Jon", "Bill", "Maria", "Ben", "Tina")
Age <- c(23, 41, 32, 58, 26)
df_fuzzybunnies <- data.frame(Name, Age)

usethis::use_data(df_fuzzybunnies, overwrite = TRUE)

library(tidyverse)

marketing_data <- read_csv('https://raw.githubusercontent.com/nailson/ifood-data-business-analyst-test/master/ifood_df.csv')

usethis::use_data(marketing_data, overwrite = TRUE)

library(faraway)

usethis::use_data(aatemp, overwrite = TRUE)