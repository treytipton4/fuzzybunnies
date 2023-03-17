x <- "alfa,bravo,charlie,delta"
test_that("dataset is modified", {
  expect_equal(df_apply(x, strsplit1()), x)
})
