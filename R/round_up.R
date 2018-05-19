#' Round up from 5
#'
#' R's [base::round()] function rounds to even, this rounds always up from 5.
#' @param x Numbers to round.
#' @param n Number of digits to round to.
#' @return Rounded number.
#' @source
#' https://stackoverflow.com/questions/12688717/round-up-from-5
#' @references
#' http://theobligatescientist.blogspot.de/2010/02/r-i-still-love-you-but-i-hate-your.html
#' @examples
#' x <- 1234.5
#' round(x) # 1234
#' round_up(x) # 1235
#' @export
round_up <- function(x, n = 0) {
  scale <- 10 ^ n
  trunc(x * scale + sign(x) * 0.5) / scale
}
