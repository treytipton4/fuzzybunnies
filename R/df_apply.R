#' Apply a function to columns of a dataset
#'
#' @param .data The dataset
#' @param .fun The function to apply
#' @param .filter The filter of columns to apply the function
#'
#' @return Modified dataset
#' @export
df_apply <- function(.data, .fun, .filter) {
  for (i in ncol(.data)) {
    if (.filter(.data[i]))
      .data[i] <- .fun(.data[i])
  }
}
