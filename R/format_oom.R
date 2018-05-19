#' Round and format number by order of magnitude
#'
#' This rounds numbers and fills up places with zeros according to the given order of magnitude.
#'
#' @param x A numeric.
#' @param oom A numeric.
#' @return A character
#' @family rounding functions
#' @export
format_oom <- function(x, oom) {
  x <- round_up(x, oom)
  ifelse(sign(oom) == -1, format(x), format(x, nsmall = abs(oom)))
}
