% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/disruptions.R
\name{disruption_modes}
\alias{disruption_modes}
\title{Retrieve a translation from description mode number to description mode name}
\usage{
disruption_modes(user_id = determine_user_id(), api_key = determine_api_key())
}
\arguments{
\item{user_id}{Integer or character. A user ID or devid provided by Public
Transport Victoria. Refer to \code{?ptvapi} for more details.}

\item{api_key}{Character. An API key, with dashes, provided by Public
Transport Victoria. Refer to \code{?ptvapi} for more details.}
}
\value{
A named vector in which the values are the disruption mode
descriptions, and the names of the vector are the description mode numbers.
}
\description{
Disruption mode types (eg. "metro_train", "metro_tram", "school_bus", "taxi")
have corresponding integer IDs. This function retrieves a named vector in
which the values are the disruption mode descriptions, and the names of the
vector are the description mode numbers. Note that disruption mode names are
in snake case, that is, all lower case with underscores between words.
}
\examples{
\dontrun{disruption_modes()}

}
