df_apply <- function(.data, .fun, .filter, ...) {
  for (i in ncol(.data)) {
    if (.filter(.data[i]))
      .data[i] <- .fun(.data[i])
  }
}
