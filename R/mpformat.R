#' Round and format number by order of magnitude
#'
#' This rounds numbers and fills up places with zeros according to the given order of magnitude.
#'
#' @param x A numeric.
#' @param digits A numeric.
#' @return A character
#' @family rounding functions
#' @export
mpformat <- function(x, digits = oom(x)) {
  x <- round_up(x, digits)
  ifelse(sign(digits) == -1, format(x), format(x, nsmall = abs(digits)))
}
