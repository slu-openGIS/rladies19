# rladies19 Setup
The following packages are required for this lesson. Base `R` packages are not included here since they are pre-installed.

## First Steps

1. Ensure that `R` is up to date - you can download it [here](https://cloud.r-project.org)
2. Ensure that RStudio is up to date - you can download it [here](https://www.rstudio.com/products/rstudio/download/#download)

## Packages
### Spatial Packages
I recommend installing `sf` before any addition packages are installed:

```r
install.packages("sf")
```

To test whether the installation has gone smoothly, you can execute the following two lines of code in your `R` console:

```r
library(sf)
nc <- st_read(system.file("shape/nc.shp", package="sf"))
```

The output should look like so:

```r
> library(sf)
Linking to GEOS 3.6.1, GDAL 2.1.3, PROJ 4.9.3
> nc <- st_read(system.file("shape/nc.shp", package="sf"))
Reading layer `nc' from data source `/Users/prenercg/Library/R/3.5/library/sf/shape/nc.shp' using driver `ESRI Shapefile'
Simple feature collection with 100 features and 14 fields
geometry type:  MULTIPOLYGON
dimension:      XY
bbox:           xmin: -84.32385 ymin: 33.88199 xmax: -75.45698 ymax: 36.58965
epsg (SRID):    4267
proj4string:    +proj=longlat +datum=NAD27 +no_defs
```

If you get installation errors related to missing dependencies, you may need to install the latest verion of [RTools](https://cran.r-project.org/bin/windows/Rtools/) (currently RTools 35) if you are a Windows user. macOS users may need to install the GDAL complete framework from the [kyngchaos](http://www.kyngchaos.com/software/frameworks/) website (currently GDLAD 2.4 Complete).

### General R Packages
Once you have `sf` installed, the remaining general packages can be installed with the following syntax:

```r
install.packages(c("tidyverse", "here", "knitr", "remotes", "rmarkdown", "stlcsb", "usethis"))
```

These packages are described below.

#### `tidyverse` Packages
*These are most easily installed by installing the entire tidyverse.*

* `dplyr` - tools for data wrangling
* `ggplot2` - tools for plotting

#### Literate Programming
*These will not be referred to directly during the session but are needed for the notebook to work correctly.*

* `knitr` - create documents from R notebooks
* `rmarkdown` - write in Markdown syntax

#### Other packages

* `here` - file path management

### `tidystl` Packages
*Not all of these packages are available through CRAN at this time.*

* `compstatr` - must be installed via GitHub using `remotes`
* `gateway` - must be installed via GitHub using `remotes`
* `postmastr` - must be installed via GitHub using `remotes`
* `stlcsb` - available through CRAN (and included in the above install code chunk)

The three packages that must be installed via GitHub can be installed using the following syntax:

```r
remotes::install_github(c("slu-openGIS/compstatr", "slu-openGIS/gateway", "slu-openGIS/postmastr"))
```
