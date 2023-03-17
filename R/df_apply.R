#' Apply a function to columns of a dataset
#'
#' @param .data The dataset
#' @param .fun The function to apply
#' @param .filter The filter of columns to apply the function
#'
#' @return Modified dataset
#' @export
#'
#' @examples
#' Name <- c("Jon", "Bill", "Maria", "Ben", "Tina")
#' Age <- c(23, 41, 32, 58, 26)
#' df <- data.frame(Name, Age)
#'
#' increment <- function(x) {
#'   x <- x + 5
#' }
#'
#' df_apply(df, increment, is.numeric)
#'
df_apply <- function(.data, .fun, .filter) {
  for (i in ncol(.data)) {
    if (sapply(.data[i], .filter))
      .data[i] <- .fun(.data[i])
  }
  return(.data)
}
