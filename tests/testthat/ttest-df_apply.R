x <- c(1, 2, 3)
y <- c(4, 5, 6)
z <- c(x, y)

test_that("df_apply works", {
  expect_equal(df_apply(z, mean), c(2, 5))
})
