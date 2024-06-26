% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lga population data documentation.R, R/postcode
%   population data documentation.R
\docType{data}
\name{population_postcode}
\alias{population_postcode}
\title{Australian Bureau of Statistics 2021 Census General Community Profile for  Local Government Areas (LGA), NSW}
\format{
\subsection{\code{population_lga}}{

A data frame with 5 columns:
\describe{
\item{LGA_name}{Text names for NSW LGAs}
\item{LGA_CODE_2021}{ABS LGA codes for NSW}
\item{indicator}{Indicators giving the age cohort, sex, and Aboriginality, including totals}
\item{year}{Year}
\item{value}{Population value.}
...
}
}

\subsection{\code{population_postcode}}{

A data frame with 4 columns:
\describe{
\item{postal_area}{ABS Postal Areas for NSW}
\item{indicator}{Indicators giving the age cohort, sex, and Aboriginality, including totals}
\item{year}{Year}
\item{value}{Population value.}
...
}
}
}
\source{
\url{https://www.abs.gov.au/census/find-census-data/datapacks?release=2021&product=GCP&geography=POA&header=S}

\url{https://www.abs.gov.au/census/find-census-data/datapacks?release=2021&product=GCP&geography=POA&header=S}
}
\usage{
population_postcode

population_postcode
}
\description{
A subset of data from the 2021 Australian Census giving population by Aboriginality, five-year age cohort, and self-reported sex (binary). Unit of observation is the local government area (LGA).
ABS LGAs are designed to approximate local government boundaries as closely as possible. They enable comparison of ABS data with other data collected using LGA as the geographic reference.

A subset of data from the 2021 Australian Census giving population by Aboriginality, five-year age cohort, and self-reported sex (binary). Unit of observation is the postal area.
Postal Areas (POAs) are designed to approximate postcode boundaries as closely as possible. They enable comparison of ABS data with other data collected using postcodes as the geographic reference.
}
\details{
NB: Small random adjustments have been made to all cell values in the csv files provided by the ABS, in order to protect the confidentiality of data.
These adjustments may mean that totals (by age, sex, or geography) may differ slightly.

NB: Small random adjustments have been made to all cell values in the csv files provided by the ABS, in order to protect the confidentiality of data.
These adjustments may mean that totals (by age, sex, or geography) may differ slightly.
}
\keyword{datasets}
