% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{shipley}
\alias{shipley}
\title{Simulated Data from Shipley (2009)}
\format{
A data frame with 1900 observations and 9 variables:
\describe{
\item{site}{a numeric code giving the site from which the observation comes}
\item{tree}{a numeric code giving the tree from which the observation comes}
\item{lat}{the latitude of the site}
\item{year}{the year in which the observation was taken}
\item{Date}{the Julian date when the bud burst occurs}
\item{DD}{the number of degree days when bud burst occurs}
\item{Growth}{the increase in diameter growth of the tree}
\item{Survival}{the probability of survival until the next year (used only
for the simulation)}
\item{Live}{a binary value (1 = tree lived the following winter, 0 = tree
died the following winter)}
}
}
\source{
\doi{10/c886}
}
\usage{
shipley
}
\description{
Simulated Data from Shipley (2009)
}
\references{
Shipley, B. (2009). Confirmatory path analysis in a generalized
multilevel context. \emph{Ecology}, \emph{90}(2), 363-368. \doi{10/bqd43d}
}
\keyword{datasets}
