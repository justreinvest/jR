## get LGA level population data

library(readxl)
library(tidyr)
library(dplyr)


# The Community Profile population data has 5-year age cohorts:
# https://www.abs.gov.au/census/find-census-data/datapacks?release=2021&product=GCP&geography=LGA&header=S

# The Indigenous People's Profile has population counts by age AND 5-year age cohorts
# https://www.abs.gov.au/census/find-census-data/datapacks?release=2021&product=IP&geography=LGA&header=S


## TODO: function or if statement to download data pack, extract file, use, remove
  ## examples: https://github.com/hadley/babynames/tree/master/data-raw


# The ABS uses numeric LGA codes, which are in a different file

# Set filepath for geographies xl
xl_filepath <- "data-raw/2021Census_geog_desc_1st_2nd_3rd_release.xlsx"

# Read the non-ABS geographies tab of the Excel file
   # in this case, sheet 6
# and then immediately filter for the codes we need
codes <- read_excel(xl_filepath, sheet = 6) %>%
  filter(ASGS_Structure == "LGA") %>%
  select(Census_Code_2021, Census_Name_2021) %>%
  rename(LGA_CODE_2021 = Census_Code_2021)

# # LGA Age cohorts
# tmp <- read.csv("./data-raw/2021Census_G07_NSW_LGA.csv")
# population_lga <- tmp %>%
#   pivot_longer(!`LGA_CODE_2021`, names_to = "indicator", values_to = "value" ) %>%
#   mutate(year = "2021") %>%
#   left_join(codes, by = "LGA_CODE_2021") %>%
#   rename(LGA_name = `Census_Name_2021`) %>%
#   select(LGA_name, LGA_CODE_2021, indicator, year, value)

# Individual age counts AND cohorts

# function to pivot the data
pivot_age_data <- function(data) {
  data %>%
    pivot_longer(!`LGA_CODE_2021`, names_to = "indicator", values_to = "value" )
}


population_lga <- read.csv("./data-raw/2021Census_I03A_NSW_LGA.csv") %>%
  pivot_age_data() %>%
  rbind(read.csv("./data-raw/2021Census_I03B_NSW_LGA.csv") %>% pivot_age_data()) %>%
  rbind(read.csv("./data-raw/2021Census_I03C_NSW_LGA.csv") %>% pivot_age_data()) %>%
  mutate(year = "2021") %>%
  left_join(codes, by = "LGA_CODE_2021") %>%
  rename(LGA_name = `Census_Name_2021`) %>%
  select(LGA_name, LGA_CODE_2021, indicator, year, value)


usethis::use_data(population_lga, overwrite = TRUE)

