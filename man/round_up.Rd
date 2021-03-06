% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/round_up.R
\name{round_up}
\alias{round_up}
\title{Round up from 5}
\source{
https://stackoverflow.com/questions/12688717/round-up-from-5
}
\usage{
round_up(x, n = 0)
}
\arguments{
\item{x}{Numbers to round.}

\item{n}{Number of digits to round to.}
}
\value{
Rounded number.
}
\description{
R's \code{\link[base:round]{base::round()}} function rounds to even, this rounds always up from 5.
}
\examples{
x <- 1234.5
round(x) # 1234
round_up(x) # 1235
}
\references{
http://theobligatescientist.blogspot.de/2010/02/r-i-still-love-you-but-i-hate-your.html
}
\seealso{
Other rounding functions: \code{\link{mpformat}},
  \code{\link{oom}}
}
