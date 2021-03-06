% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CovTest1.R
\name{CovTest1}
\alias{CovTest1}
\title{One-Sample Tests for Covariance Matrices}
\usage{
CovTest1(data, Sigma0 = diag(ncol(data)), alpha = 0.05,
  method = c("Cai13", "Srivastava14"))
}
\arguments{
\item{data}{an \eqn{(n\times p)} data matrix where each row is an observation.}

\item{Sigma0}{a \eqn{(p\times p)} given covariance matrix.}

\item{alpha}{level of significance.}

\item{method}{a name of test.}
}
\value{
a named list containing \describe{
\item{statistic}{a test statistic value.}
\item{threshold}{rejection criterion to be compared against test statistic.}
\item{reject}{a logical; \code{TRUE} to reject null hypothesis, \code{FALSE} otherwise.}
}
}
\description{
Given data, \code{CovTest1} performs 1-sample test for Covariance where
the null hypothesis is
\deqn{H_0 : \Sigma_n = \Sigma_0}
where \eqn{\Sigma_n} is the covariance of data model and \eqn{\Sigma_0} is a
hypothesized covariance.
}
\examples{
\dontrun{
## generate data from multivariate normal with trivial covariance.
data = matrix(rnorm(100*5), nrow=100)

## run test
CovTest1(data, method="Cai13")
CovTest1(data, method="Srivastava14")
}

}
\references{
\insertRef{cai_optimal_2013}{CovTools}

\insertRef{srivastava_tests_2014}{CovTools}
}
