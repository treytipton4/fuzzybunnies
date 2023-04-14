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


#bank_failures <- read.table("~/Library/Mobile Documents/com~apple~CloudDocs/Data 303/Fuzzy Bunnies/data/bank_failures.rda",
#                          sep = '\t',quote = "",na.strings = "#NA",comment.char = "", fill = TRUE, header = TRUE)

#print(bank_failures)
#save(CERT, CHCLASS1, CITYST, COST, FAILDATE, FIN, ID, NAME, QBFSSET, QBFDEP, RESTYPE, RESTYPE1, SAVER, file = )
#usethis::use_data(bank_failures, overwrite = TRUE)


candydata <- read_csv('https://raw.githubusercontent.com/fivethirtyeight/data/master/candy-power-ranking/candy-data.csv')
usethis::use_data(candydata, overwrite = TRUE)


diamond_data <- read_csv("https://raw.githubusercontent.com/Opensourcefordatascience/Data-sets/master/diamonds.csv")
diamond_data <- select(diamond_data, carat:price)

usethis::use_data(diamond_data, overwrite = TRUE)
