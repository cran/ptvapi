% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/disruptions.R
\name{disruptions}
\alias{disruptions}
\title{Information for all disruptions}
\usage{
disruptions(
  route_types = NULL,
  disruption_modes = NULL,
  disruption_status = NULL,
  user_id = determine_user_id(),
  api_key = determine_api_key()
)
}
\arguments{
\item{route_types}{Integer or character vector. Optionally filter by a vector
of route types. A route type can be provided either as a non-negative
integer code, or as a character: "Tram", "Train", "Bus", "Vline" or "Night
Bus". Character inputs are not case-sensitive. Use the
\code{\link{route_types}} function to extract a vector of all route types.
The filter is applied to the disruption mode, rather than the routes that
are affected by the disruption. For example, filtering by the "train" route
type will restrict the disruptions returned to those with a mode
corresponding to "metro_train".}

\item{disruption_modes}{Integer vector. Optionally filter by disruption
modes. For a full list of modes and their corresponding descriptions, use
the \code{disruptions_modes} function.}

\item{disruption_status}{Character. Can be used to filter to either "current"
or "planned" disruptions. Defaults to NULL, in which case no filter is
applied.}

\item{user_id}{Integer or character. A user ID or devid provided by Public
Transport Victoria. Refer to \code{?ptvapi} for more details.}

\item{api_key}{Character. An API key, with dashes, provided by Public
Transport Victoria. Refer to \code{?ptvapi} for more details.}
}
\value{
A tibble with the following columns: \itemize{
\item \code{disruption_mode}
\item \code{disruption_mode_description}
\item \code{disruption_id}
\item \code{title}
\item \code{url}
\item \code{description}
\item \code{disruption_status}
\item \code{disruption_type}
\item \code{published_on}
\item \code{last_updated}
\item \code{from_date}
\item \code{to_date}
\item \code{routes}
\item \code{stops}
\item \code{colour}
\item \code{display_on_board}
\item \code{display_status}
}
}
\description{
Information for all disruptions
}
\examples{
\dontrun{
disruptions()
disruptions(route_types = c("Train", "Tram"))
disruptions(disruption_modes = c(0, 1))
disruptions(disruption_status = "current")
}

}
