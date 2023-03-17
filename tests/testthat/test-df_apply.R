Name <- c("Jon", "Bill", "Maria", "Ben", "Tina")
Age <- c(23, 41, 32, 58, 26)
df <- data.frame(Name, Age)

Name <- c("Jon", "Bill", "Maria", "Ben", "Tina")
Age <- c(28, 46, 37, 63, 31)
df2 <- data.frame(Name, Age)

increment <- function(x) {
  x <- x + 5
}

test_that("dataset is modified", {
  expect_equal(df_apply(df, increment, is.numeric), df2)
})
