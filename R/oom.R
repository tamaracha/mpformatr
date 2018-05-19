#' Get order of magnitude for numbers
#'
#' This is meant to get the order of magnitude from measurement errors to round these errors and measured values or centers like mean or median in an empirical way.
#'
#' The following convention is implemented:
#' * Round `x` to 2 significant digits.
#' * If first significant digit is 1, return number of digits according to 2 significant digits.
#' * Otherwise return number of digits according to 1 significant digit.
#'
#' @param x A numeric vector of measurement uncertainties, e.g., sd, se
#' @return A numeric vector containing orders of magnitude, can be passed to [base::round()] as digits.
#' @examples
#' # Round very long error to 1 significant digit
#' x <- 0.074385229
#' oom_x <- oom(x)
#' round(x, oom_x)
#'
#' # This starts with 1 and gets 2 signif. digits
#' x <- 0.174385229
#' oom_x <- oom(x)
#' round(x, oom_x)
#'
#' # This again, but rounds up to 1 signif. digit
#' x <- 0.197385229
#' oom_x <- oom(x)
#' round(x, oom_x)
#' @family rounding functions
#' @export
oom <- function(x) {
  # x must be numeric
  stopifnot(is.numeric(x))
  # x must be positive
  x <- abs(x)
  oom <- floor(log10(x))
  val <- round(x / 10 ^ oom, 1)
  ifelse(val < 2, -oom + 1, -oom)
}
