## get LGA attributes: regional / rural/ metro classification

library(readxl)
library(tidyr)
library(dplyr)


# LGA attributes as defined by NSW Council:
# https://www.yourcouncil.nsw.gov.au/wp-content/uploads/2020/05/Australian-Classification-of-Local-Government-and-OLG-group-numbers.pdf

# Manually converted to Excel by Emma Whitnall on 1 Oct 2024

# Set filepath for geographies xl
xl_filepath <- "./data-raw/NSW LGA Classifications.xlsx"

lga_attributes <- read_excel(xl_filepath, sheet = 1)
names(lga_attributes) <- c("statistical_area", "LGA_name", "OLG_group", "council_type" )

usethis::use_data(lga_attributes, overwrite = TRUE)

## TODO(th): add documentation
## TODO(th): incorporate metadata

