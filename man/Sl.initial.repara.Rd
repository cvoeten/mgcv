% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mgcvExports.R
\name{Sl.initial.repara}
\alias{Sl.initial.repara}
\title{Re-parametrizing model matrix X}
\usage{
Sl.initial.repara(Sl, X, inverse = FALSE, both.sides = TRUE, cov = TRUE,
  nt = 1)
}
\arguments{
\item{Sl}{the output of \code{Sl.setup}.}

\item{X}{the model matrix.}

\item{inverse}{if \code{TRUE} an inverse re-parametrization is performed.}

\item{both.sides}{if \code{inverse==TRUE} and \code{both.sides==FALSE} then
the re-parametrization only applied to rhs, as appropriate for a choleski factor.
If \code{both.sides==FALSE}, \code{X} is a vector and \code{inverse==FALSE} then \code{X} is
taken as a coefficient vector (so re-parametrization is inverse of that for the model matrix).}

\item{cov}{boolean indicating whether \code{X} is a covariance matrix.}

\item{nt}{number of parallel threads to be used.}
}
\value{
A re-parametrized version of \code{X}.
}
\description{
INTERNAL routine to apply initial Sl re-parameterization to model matrix X,
or, if \code{inverse==TRUE}, to apply inverse re-parametrization to parameter vector 
or covariance matrix.
}
\author{
Simon N. Wood <simon.wood@r-project.org>.
}
