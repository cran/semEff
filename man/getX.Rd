% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stdEff-fun.R
\name{getX}
\alias{getX}
\title{Get Model Design Matrix}
\usage{
getX(
  mod,
  data = NULL,
  contrasts = NULL,
  add.data = FALSE,
  centre = FALSE,
  scale = FALSE,
  as.df = FALSE,
  merge = FALSE,
  env = NULL
)
}
\arguments{
\item{mod}{A fitted model object, or a list or nested list of such objects.
Can also be a model formula(s) or character vector(s) of term names (in
which case \code{data} must be supplied).}

\item{data}{An optional dataset, used to refit the model(s) and/or construct
the design matrix.}

\item{contrasts}{Optional, a named list of contrasts to apply to factors (see
the \code{contrasts.arg} argument of \code{\link[=model.matrix]{model.matrix()}} for specification). These
will override any existing contrasts in the data or model call.}

\item{add.data}{Logical, whether to append data not specified in the model
formula (with factors converted to dummy variables).}

\item{centre, scale}{Logical, whether to mean-centre and/or scale terms by
standard deviations (for interactions, this is carried out prior to
construction of product terms). Alternatively, a numeric vector of
means/standard deviations (or other statistics) can be supplied, whose
names must match term names.}

\item{as.df}{Logical, whether to return the matrix as a data frame (without
modifying names).}

\item{merge}{Logical. If \code{TRUE}, and \code{mod} is a list or nested list, a single
matrix containing all terms is returned (variables must be the same
length).}

\item{env}{Environment in which to look for model data (if none supplied).
Defaults to the \code{\link[=formula]{formula()}} environment.}
}
\value{
A matrix or data frame of model(s) terms, or a list or nested list of
same.
}
\description{
Return the design matrix for a fitted model, with some
additional options.
}
\details{
This is primarily a convenience function to enable more flexible
construction of design matrices, usually for internal use and for further
processing. Use cases include processing and/or return of terms which may
not be present in a typical design matrix (e.g. constituents of product
terms, dummy variables).
}
\examples{
# Model design matrix (original)
m <- shipley.growth[[3]]
x1 <- model.matrix(m)
x2 <- getX(m)
stopifnot(all.equal(x1, x2, check.attributes = FALSE))

# Using formula or term names (supply data)
d <- shipley
x1 <- getX(formula(m), data = d)
x2 <- getX(names(lme4::fixef(m)), data = d)
stopifnot(all.equal(x1, x2))

# Scaled terms
head(getX(m, centre = TRUE, scale = TRUE))

# Combined matrix for SEM
head(getX(shipley.sem, merge = TRUE))
head(getX(shipley.sem, merge = TRUE, add.data = TRUE))  # add other variables
}
\seealso{
\code{\link[=model.matrix]{model.matrix()}}
}
