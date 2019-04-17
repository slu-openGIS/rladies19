# create local data sources for tutorial
library(here)
library(gateway)
library(usethis)

# download geocoders and save
geocoder <- gw_build_geocoder(style = "full", class = "tibble", return = "coords")
use_data(geocoder)

geocoder_s <- gw_build_geocoder(style = "short", class = "tibble", return = "coords")
use_data(geocoder_s)
