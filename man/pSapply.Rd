% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper-fun.R
\name{pSapply}
\alias{pSapply}
\title{Parallel \code{\link[=sapply]{sapply()}}}
\usage{
pSapply(
  X,
  FUN,
  parallel = c("snow", "multicore", "no"),
  ncpus = NULL,
  cl = NULL,
  add.obj = NULL,
  ...
)
}
\arguments{
\item{X}{A vector object (numeric, character, or list).}

\item{FUN}{Function to apply to the elements of \code{X}.}

\item{parallel}{The type of parallel processing to use. Can be one of
\code{"snow"} (default), \code{"multicore"} (not available on Windows), or \code{"no"}
(for none). See Details.}

\item{ncpus}{Number of system cores to use for parallel processing. If \code{NULL}
(default), all available cores are used.}

\item{cl}{Optional cluster to use if \code{parallel = "snow"}. If \code{NULL}
(default), a local cluster is created using the specified number of cores.}

\item{add.obj}{A character vector of any additional object names to be
exported to the cluster. Use if a required object or function cannot be
found.}

\item{...}{Additional arguments to \code{\link[=parSapply]{parSapply()}},
\href{https://rdrr.io/r/parallel/unix/mclapply.html}{\code{mcmapply()}}, or
\code{\link[=sapply]{sapply()}} (note: arguments \code{"simplify"} and \code{"SIMPLIFY"} are both
allowed).}
}
\value{
The output of \code{FUN} in a list, or simplified to a vector or array.
}
\description{
Apply a function to a vector using parallel processing.
}
\details{
This is a wrapper for \code{\link[parallel:clusterApply]{parallel::parSapply()}} (\code{"snow"}) or
\href{https://rdrr.io/r/parallel/unix/mclapply.html}{\code{parallel::mcmapply()}}
(\code{"multicore"}), enabling (potentially) faster processing of a function
over a vector of objects. If \code{parallel = "no"}, \code{\link[=sapply]{sapply()}} is used instead.

Parallel processing via option \code{"snow"} (default) is carried out using a
cluster of workers, which is automatically set up via \code{\link[=makeCluster]{makeCluster()}} using
all available system cores or a user supplied number of cores. The function
then exports the required objects and functions to this cluster using
\code{\link[=clusterExport]{clusterExport()}}, after performing a (rough) match of all objects and
functions in the current global environment to those referenced in the call
to \code{FUN} (and also any calls in \code{X}). Any additional required object names
can be supplied using \code{add.obj}.
}
