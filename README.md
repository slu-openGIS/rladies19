# rladies19 <img src="/img/logo.png" align="right" />
[![](https://img.shields.io/badge/lesson%20status-stable-brightgreen.svg)](https://github.com/slu-openGIS/rladies19/)
[![](https://img.shields.io/github/release/slu-openGIS/rladies19.svg?label=version)](https://github.com/slu-openGIS/rladies19/releases)
[![](https://img.shields.io/github/last-commit/slu-openGIS/rladies19.svg)](https://github.com/slu-openGIS/rladies19/commits/master)
[![Travis-CI Build Status](https://travis-ci.org/slu-openGIS/rladies19.svg?branch=master)](https://travis-ci.org/slu-openGIS/rladies19)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/slu-openGIS/rladies19?branch=master&svg=true)](https://ci.appveyor.com/project/chris-prener/rladies19)

## Lesson Overview
This repository contains lesson materials from Chris's RLadies session in April 2019, which covers some basic elements of working with spatial data using `tidystl`.

### Lesson Objectives
By the end of this lesson, learners should be able to:

### Lesson Resources
* The [`SETUP.md`](/references/SETUP.md) file in the [`references/`](/references) directory contains a list of packages required for this lesson
* The [`notebook/`](/notebook) directory contains our primary teaching materials, included a completed version of the notebook we will be working on during the seminar.
* The [`references/`](/references) directory also contains other notes on changes to the repository, key topics, terms, data sources, and software.

### Extra Resources


### Lesson Quick Start
#### Install Key Dependencies
Before you proceed with other installations, it is important to get the `sf` package installed correctly. You should be able to install `sf` using:

```r
install.packages("sf")
```

If you run into issues, check the [setup instructions for suggestions](references/SETUP.md).

#### Install Necessary Packages
Once you have `sf` up and running, the packages we'll need for today can be installed using:

```r
install.packages(c("tidyverse", "here", "knitr", "remotes", "rmarkdown", "stlcsb", "testthat", "usethis"))
```

There are several other packages we'll need which are not yet published on CRAN. These can be installed with the `remotes` package once you've run the code chunk above:

```r
remotes::install_github(c("slu-openGIS/compstatr", "slu-openGIS/gateway", "slu-openGIS/postmastr"))
```

#### Download Lesson Materials
You can download this lesson to your Desktop easily using `usethis`:

```r
usethis::use_course("https://github.com/slu-openGIS/rladies19/archive/master.zip")
```

By using `usethis::use_course`, all of the lesson materials will be downloaded to your computer, automatically extracted, and saved to your desktop. You can then open the `.Rproj` file to get started.

## Contributor Code of Conduct
Please note that this project is released with a [Contributor Code of Conduct](.github/CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

## About the SLU openGIS
The [openGIS project](https://slu-openGIS.github.io) is a collaborative effort with SLU students to curate and host GIS data about the St. Louis area in an accessible manner. We also maintain several R packages that contain tools for working with spatial data. The project is a part of the [SLU Data Science Seminar](https://slu-dss.githb.io).

### About the SLU Data Science Seminar
The [SLU Data Science Seminar](https://slu-dss.githb.io) (DSS) is a collaborative, interdisciplinary group at Saint Louis University focused on building researchers’ data science skills using open source software. We currently host seminars focused on the programming language R. The SLU DSS is co-organized by [Christina Gacia, Ph.D.](mailto:christina.garcia@slu.edu) and [Christopher Prener, Ph.D.](mailto:chris.prener@slu.edu}). You can keep up with us here on GitHub, on our [website](https://slu-dss.githb.io), and on [Twitter](https://twitter.com/SLUDSS).

### About Saint Louis University <img src="/img/sluLogo.png" align="right" />
Founded in 1818, [Saint Louis University](http://www.slu.edu) is one of the nation’s oldest and most prestigious Catholic institutions. Rooted in Jesuit values and its pioneering history as the first university west of the Mississippi River, SLU offers nearly 13,000 students a rigorous, transformative education of the whole person. At the core of the University’s diverse community of scholars is SLU’s service-focused mission, which challenges and prepares students to make the world a better, more just place.
