#' Apply a function to columns of a dataset
#'
#' @param .data a dataframe
#' @param .fun a function that can be applied to a column of a data frame and return a column of a data frame
#' @param .filter a function that filters which columns to apply the function and returns a logical (TRUE or FALSE), .fun is applied to the columns that return TRUE
#' @param ... additional parameters passed to .fun
#'
#' @return modified dataframe
#' @export
#'
#' @examples
#' #apply increment function to a dataframe called df_fuzzybunnies, but only for the numeric columns
#'
#' increment <- function(x) {
#'   return(x + 5)
#' }
#'
#' df_apply(df_fuzzybunnies, increment, is.numeric)
#'
#' # apply str_trunc function to a dataframe
#' # keeping only the first letter (and ellipses) of the days of the week
#' # and only applying to character columns
#'
#' library(stringr)
#'
#' xy_days_of_week <- data.frame(x = c(1,2,3,4,5,6,7),
#' y = c('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'))
#'
#' df_apply(xy_days_of_week, str_trunc, is.character, width = 4)
df_apply <- function(.data, .fun, .filter, ...) {
  stopifnot(is.data.frame(.data))
  for (i in 1:ncol(.data)) {
    if (sapply(.data[i], .filter))
      .data[i] <- .fun(.data[i], ...)
  }
  return(.data)
}



