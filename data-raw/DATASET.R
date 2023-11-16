## code to prepare `DATASET` dataset goes here

#' Australian Bureau of Statistics 2021 Census General Community Profile for Postal Areas (POA), NSW
#'
#' A subset of data from the 2021 Australian Census
#'
#' @format ## `poa.nsw`
#' A data frame with 7,240 rows and 60 columns:
#' \describe{
#'   \item{country}{Country name}
#'   \item{iso2, iso3}{2 & 3 letter ISO country codes}
#'   \item{year}{Year}
#'   ...
#' }
#' @source <https://www.abs.gov.au/census/find-census-data/datapacks?release=2021&product=GCP&geography=POA&header=S>
"poa.nsw"


# get LGA population data

url <- "https://www.abs.gov.au/census/find-census-data/datapacks/download/2021_GCP_POA_for_NSW_short-header.zip"
tmp <- import(file = url, which = 4)



usethis::use_data(DATASET, overwrite = TRUE)
