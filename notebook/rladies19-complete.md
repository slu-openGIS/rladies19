RLadies 2019
================
Christopher Prener, Ph.D.
(April 18, 2019)

## Introduction

This notebook provides an overview of some of the features and tools
that are at the core of the `tidystl` framework. More about `tidystl`
can be found on the [SLU openGIS
website](https://slu-opengis.github.io/news/tidystl_annoucement/).

## Dependencies

This notebook requires a variety of `tidystl`, `tidyverse`, and other
dependencies. These reflect the ways in which I manage my own research
and teach students to use `R`. There are other frameworks both for data
wrangling (i.e. base `R`, `dt` (datatable)) and spatial data management
(i.e. `sp`).

``` r
# tidystl packages
library(compstatr)     # stlmpd data wrangling
library(gateway)       # st louis spatial data tools
library(postmastr)     # street address normalization
library(stlcsb)        # st louis citizens service bureau data wrangling

# tidyverse packages
library(dplyr)         # data wrangling
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(ggplot2)       # plotting

# spatial packages
library(sf)            # spatial data tools
```

    ## Linking to GEOS 3.6.1, GDAL 2.1.3, PROJ 4.9.3

``` r
# other packages
library(here)          # file path management
```

    ## here() starts at /Users/prenercg/GitHub/openGIS/rladies19

## Load Data

This notebook requires a number of data sets, some of which we can load
right away. Two local geocoders are saved as `.rda` files in the `data/`
to provide the most efficient storage means possible:

``` r
# load local full geocoder
load(here("data", "geocoder.rda"))

# load local short geocoder
load(here("data", "geocoder_s.rda"))
```

Both geocoders could also be built using the `gateway` package:

``` r
# build local full geocoder
geocoder <- gw_build_geocoder(style = "full", class = "tibble", return = "coords")

# build local short goecoder
geocoder_s <- gw_build_geocoder(style = "short", class = "tibble", return = "coords")
```

These are not built here to save time during the tutorial.
