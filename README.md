
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mpformatr

Mpformatr is a collection of utilities that help to fulfill reporting
and rounding conventions for empirical numbers. These numbers have their
own error. This error, e.g., determines the digit which the number is
rounded to dynamically. Some functions might not be very complicated,
but I was tired of repeating myself.

## Installation

You can install mpformatr from [Github](https://github.com) with:

``` r
devtools::install_github("tamaracha/mpformatr")
```

## Example

``` r
# x is a measurement error
x <- 0.174385229
# get order of magnitude of x
# This takes 2 significant digits
oom(x)
#> [1] 2
# format x accordingly
mpformat(x)
#> [1] "0.17"
# format some measured value according to x
mpformat(42, oom(x))
#> [1] "42.00"
```
