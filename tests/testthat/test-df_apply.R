Name <- c("Jon", "Bill", "Maria", "Ben", "Tina")
Age <- c(23, 41, 32, 58, 26)
df <- data.frame(Name, Age)

Name <- c("Jon", "Bill", "Maria", "Ben", "Tina")
Age <- c(28, 46, 37, 63, 31)
df2 <- data.frame(Name, Age)

increment <- function(x) {
  return(x + 5)
}

test_that("dataset is modified", {
  expect_equal(df_apply(df, increment, is.numeric), df2)
})


x <- c(1.1, 2.5, 3.9)
y <- c(4, 5, 6)
z <- c("Hello", "Hi", "Hey")
xyz <- data.frame(x, y, z)


x <- c(1, 2, 3)
y <- c(4, 5, 6)
z <- c("Hello", "Hi", "Hey")
xyz2 <- data.frame(x, y, z)

test_that("df_apply works", {
  expect_equal(df_apply(xyz, floor, is.numeric), xyz2)
})
#test

