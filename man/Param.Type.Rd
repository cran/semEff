% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper-fun.R
\name{Param.Type}
\alias{Param.Type}
\alias{isInt}
\alias{isInx}
\alias{isPhi}
\alias{isR2}
\alias{isRaw}
\title{Parameter Types}
\usage{
isInt(x)

isInx(x)

isPhi(x)

isR2(x)

isRaw(x)
}
\arguments{
\item{x}{A character vector of parameter names (e.g. names of coefficients
from \code{\link[=coef]{coef()}} or \code{\link[=stdEff]{stdEff()}}).}
}
\value{
A logical vector of the same length as \code{x}.
}
\description{
Functions to determine the presence/absence of certain model
parameter types using their names. Intended largely for convenience and
internal use.
}
\section{Functions}{
\itemize{
\item \code{isInt()}: Is parameter an intercept?

\item \code{isInx()}: Is parameter a variable interaction (product term)?

\item \code{isPhi()}: Is parameter a beta regression precision coefficient?

\item \code{isR2()}: Is parameter an R-squared value?

\item \code{isRaw()}: Is parameter a raw (unstandardised) coefficient?

}}
\keyword{internal}
