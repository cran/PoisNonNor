\name{intercor.all}
\alias{intercor.all }
\title{
Computes the intermediate correlation matrix}
\description{
This function computes the intermediate correlation matrix of the multivariate normal distribution that provides a basis for subsequent tranformations.
}
\usage{
intercor.all(cmat, pmat, lamvec)
}
\arguments{
  \item{cmat}{
a (n1+n2)x(n1+n2) matrix of specified correlations.
}
  \item{pmat}{
a n2x4 matrix where each row includes the four coefficients (a,b,c,d) of the Fleishman's system.
}
  \item{lamvec}{
a vector of lambda values of length n1. 
}
}
\details{
This function assembles all three submatrices that are pertinent to all continuous-continuous, count-count, and count-continuous pairs. 
}
\value{
Returns an intermediate matrix of size (n1+n2)x(n1+n2).
}
\seealso{
 \code{\link{intercor.NN}},  \code{\link{intercor.NNP}},  \code{\link{intercor.PP}}
}
\examples{
\dontrun{
pmat = matrix(c(
   0.1148643, 1.0899150, -0.1148643, -0.0356926,
  -0.0488138, 0.9203374,  0.0488138,  0.0251256,
  -0.2107427, 1.0398224,  0.2107427, -0.0293247), nrow=3, byrow=TRUE)

lamvec = c(0.5,0.7,0.9)

cmat = matrix(c(
  1.000,  0.352,  0.265, 0.342,  0.090, 0.141,
  0.352,  1.000,  0.121, 0.297, -0.022, 0.177,
  0.265,  0.121,  1.000, 0.294, -0.044, 0.129,
  0.342,  0.297,  0.294, 1.000,  0.100, 0.354,
  0.090, -0.022, -0.044, 0.100,  1.000, 0.386,
  0.141,  0.177,  0.129, 0.354,  0.386, 1.000), nrow=6, byrow=TRUE)

intercor.all(cmat,pmat,lamvec)
}
}

