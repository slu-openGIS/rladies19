# create local data sources for tutorial
library(here)
library(gateway)
library(readr)
library(stlcsb)
library(usethis)

# download geocoders and save
geocoder <- gw_build_geocoder(style = "full", class = "tibble", return = "coords")
use_data(geocoder)

geocoder_s <- gw_build_geocoder(style = "short", class = "tibble", return = "coords")
use_data(geocoder_s)

# download stlcsb data and save
csb <- csb_get_data(years = 2017:2018)
write_csv(csb, path = here("data", "csb.csv"))
