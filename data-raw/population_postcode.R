## get Post-code level population data

library(tidyr)
library(dplyr)

# url <- "https://www.abs.gov.au/census/find-census-data/datapacks/download/2021_GCP_POA_for_NSW_short-header.zip"

## TODO: function or if statement to download data pack, extract file, use, remove
  ## examples: https://github.com/hadley/babynames/tree/master/data-raw

tmp <- read.csv("./data-raw/2021Census_G07_NSW_POA.csv")

population_postcode <- tmp %>%
  pivot_longer(!`POA_CODE_2021`, names_to = "indicator", values_to = "value" ) %>%
  mutate(year = "2021") %>%
  rename(postal_area = `POA_CODE_2021`) %>%
  select(postal_area, indicator, year, value)


usethis::use_data(population_postcode, overwrite = TRUE)
