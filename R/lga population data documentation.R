
#' Australian Bureau of Statistics 2021 Census General Community Profile for  Local Government Areas (LGA), NSW
#'
#' A subset of data from the 2021 Australian Census giving population by Aboriginality, five-year age cohort, and self-reported sex (binary). Unit of observation is the local government area (LGA).
#' ABS LGAs are designed to approximate local government boundaries as closely as possible. They enable comparison of ABS data with other data collected using LGA as the geographic reference.
#'
#' NB: Small random adjustments have been made to all cell values in the csv files provided by the ABS, in order to protect the confidentiality of data.
#' These adjustments may mean that totals (by age, sex, or geography) may differ slightly.
#'
#'
#' @format ## `population_lga`
#' A data frame with 5 columns:
#' \describe{
#'   \item{LGA_name}{Text names for NSW LGAs}
#'   \item{LGA_CODE_2021}{ABS LGA codes for NSW}
#'   \item{indicator}{Indicators giving the age cohort, sex, and Aboriginality, including totals}
#'   \item{year}{Year}
#'   \item{value}{Population value.}
#'   ...
#' }
#' @source <https://www.abs.gov.au/census/find-census-data/datapacks?release=2021&product=GCP&geography=POA&header=S>
"population_postcode"
