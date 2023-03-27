## code to prepare `xyz_fuzzybunnies` dataset goes here

x <- c(1.1, 2.5, 3.9)
y <- c(4, 5, 6)
z <- c("Hello", "Hi", "Hey")
xyz_fuzzybunnies <- data.frame(x, y, z)

usethis::use_data(xyz_fuzzybunnies, overwrite = TRUE)


