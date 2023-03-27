
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fuzzybunnies

<!-- badges: start -->
<!-- badges: end -->

fuzzybunnies contains a function called df_apply() that applies any
function to a data frame. It expects a data frame, a function, and
another function that filters which columns of the data frame you want
to apply the given function to.

## Installation

You can install the development version of fuzzybunnies from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("treytipton4/fuzzybunnies")
```

## Example

This is a basic example which shows you how to apply the floor()
function to the numeric columns of a data frame using df_apply():

``` r
library(fuzzybunnies)

x <- c(1.1, 2.5, 3.9)
y <- c(4, 5, 6)
z <- c("Hello", "Hi", "Hey")
xyz <- data.frame(x, y, z)

head(xyz)
#>     x y     z
#> 1 1.1 4 Hello
#> 2 2.5 5    Hi
#> 3 3.9 6   Hey

new_xyz <- df_apply(xyz, floor, is.numeric)

head(new_xyz)
#>     x y     z
#> 1 1.1 4 Hello
#> 2 2.5 5    Hi
#> 3 3.9 6   Hey
```

This example applies an existing R command, floor(), to the xyz
dataframe - again only applying it to the numeric columns. The floor
function rounds all numbers down to the nearest integer, thus, when
using the df_apply(), the y and z columns should remain the same while
the x column is changed to the values 1, 2, and 3.
