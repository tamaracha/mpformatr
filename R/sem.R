#' Standard error of the mean
#'
#' @param x Numeric vector
#' @return A numeric
#' @export
#' @examples
#' # Get the SEM of some T (not t) distributed samples with ascending size
#' sem(rnorm(10, 50, 10))
#' sem(rnorm(20, 50, 10))
#' sem(rnorm(30, 50, 10))
sem <- function(x) {
  x <- stats::na.omit(x)
  stopifnot(is.numeric(x))
  stats::sd(x) / sqrt(length(x))
}
