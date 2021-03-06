% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PreEst.banded2.R
\name{PreEst.banded2}
\alias{PreEst.banded2}
\title{Bayesian Estimation of a Banded Precision Matrix (Lee 2017)}
\usage{
PreEst.banded2(X, upperK = floor(ncol(X)/2), logpi = function(k) {    
  -k^4 })
}
\arguments{
\item{X}{an \eqn{(n\times p)} data matrix where each row is an observation.}

\item{upperK}{upper bound of bandwidth \eqn{k}.}

\item{logpi}{log of prior distribution for bandwidth \eqn{k}. Default is a function proportional to \eqn{-k^4}.}
}
\value{
a named list containing: \describe{
\item{C}{a \eqn{(p\times p)} MAP estimate for precision matrix.}
}
}
\description{
\code{PreEst.banded2} returns a Bayes estimator of the banded precision matrix,
which is defined in subsection 3.3 of Lee and Lee (2017), using the k-BC prior.
The bandwidth is set at the mode of marginal posterior for the bandwidth parameter.
}
\examples{
## generate data from multivariate normal with Identity precision.
data = mvtnorm::rmvnorm(100, sigma=diag(10))

## compare different K
out1 <- PreEst.banded2(data, upperK=1)
out2 <- PreEst.banded2(data, upperK=3)
out3 <- PreEst.banded2(data, upperK=5)

## visualize
par(mfrow=c(2,2), pty="s")
image(pracma::flipud(diag(10)),main="Original Precision")
image(pracma::flipud(out1$C), main="banded2::upperK=1")
image(pracma::flipud(out2$C), main="banded2::upperK=3")
image(pracma::flipud(out3$C), main="banded2::upperK=5")

}
\references{
\insertRef{lee_estimating_2017}{CovTools}
}
