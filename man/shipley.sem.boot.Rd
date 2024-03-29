% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{shipley.sem.boot}
\alias{shipley.sem.boot}
\title{Bootstrapped Estimates for Shipley SEM}
\format{
A list of objects of class \code{"boot"}, representing bootstrapped
estimates from fitted mixed models.
}
\usage{
shipley.sem.boot
}
\description{
Bootstrapped estimates generated from the hypothesised SEM from
Shipley (2009), using \code{\link[=bootEff]{bootEff()}}.
}
\examples{
# Specification
# shipley.sem.boot <- bootEff(shipley.sem, R = 1000, seed = 13,
#                             ran.eff = "site")
}
\references{
Shipley, B. (2009). Confirmatory path analysis in a generalized
multilevel context. \emph{Ecology}, \emph{90}(2), 363-368. \doi{10/bqd43d}
}
\keyword{datasets}
