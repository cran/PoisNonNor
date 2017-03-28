\name{intercor.PP}
\alias{intercor.PP}
\title{
Computes the subset of the intermediate correlation matrix that is pertinent to the count pairs
}
\description{
This function computes the submatrix of the intermediate correlation matrix of the multivariate normal distribution. It is relevant to the count part of the data.
}
\usage{
intercor.PP(lamvec, cmat)
}
\arguments{
  \item{lamvec}{
a vector of lambda values of length n1.
}
  \item{cmat}{
a n1xn1 matrix of specified correlations.
}
}
\details{
Calculations are done by combining the methods described in Yahav and Shumeli (2012) and Amatya and Demirtas (2017). 
}
\value{
Returns an intermediate matrix of size n1xn1.
}
\references{
Amatya, A. and Demirtas, H. (2017). PoisNor: An R package for generation of multivariate data with Poisson and normal marginals. Communications in Statistics--Simulation and Computation, 46(3), 2241-2253.

Yahav, I. and Shmueli, G. (2012). On generating multivariate poisson data in management science applications. Applied Stochastic Models in Business and Industry, 28(1), 91-102.
}
\examples{
\dontrun{
lamvec = c(0.5,0.7,0.9)
cmat = matrix(c(
  1.000,  0.352,  0.265, 
  0.352,  1.000,  0.121, 
  0.265,  0.121,  1.000), nrow=3, byrow=TRUE)
intercor.PP(lamvec, cmat)
}
}