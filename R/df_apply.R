#' Apply a function to columns of a dataset
#'
#' @param .data The dataset
#' @param .fun The function to apply
#' @param .filter The filter of columns to apply the function
#' @param ... Additional parameters passed to .fun
#'
#' @return Modified dataset
#' @export
#'
#' @examples
#' Name <- c("Jon", "Bill", "Maria", "Ben", "Tina")
#' Age <- c(23, 41, 32, 58, 26)
#' df_fuzzybunnies <- data.frame(Name, Age)
#'
#' increment <- function(x) {
#'   return(x + 5)
#' }
#'
#' df_apply(df_fuzzybunnies, increment, is.numeric)
#'
df_apply <- function(.data, .fun, .filter, ...) {
  for (i in 1:ncol(.data)) {
    if (sapply(.data[i], .filter))
      .data[i] <- .fun(.data[i], ...)
  }
  return(.data)
}



