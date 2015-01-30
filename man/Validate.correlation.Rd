\name{Validate.correlation}
\alias{Validate.correlation}
\title{
Checks the validity of the specified correlation matrix
}
\description{
The function checks the validity of pairwise correlations. Additionally, it checks positive definiteness, symmetry and correctness of the dimensions.
}
\usage{
Validate.correlation(cmat, pmat = NULL, lamvec = NULL)
}
\arguments{
  \item{cmat}{
a nxn matrix of specified correlations for the n-variate distribution.
}
  \item{pmat}{
a n2x4 matrix where each row includes the four coefficients (a,b,c,d) of the Fleishman's system.
}
  \item{lamvec}{
a vector of lambda values of length n1.
}
}
\details{
In addition to being positive definite and symmetric, the values of pairwise correlations in the target correlation matrix must also fall within the limits imposed by the marginal distributions in the system. The function ensures that the supplied correlation matrix is valid for simulation. If a violation occurs, an error message is displayed that identifies the violation. The function returns a logical value TRUE when no such violation occurs.
}

\seealso{
\code{\link{bounds.corr.GSC.PP}}, \code{\link{bounds.corr.GSC.NN}}, \code{\link{bounds.corr.GSC.NNP}}
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

Validate.correlation (cmat,pmat,lamvec)
}
}