\name{intercor.NNP}
\alias{intercor.NNP}
\title{
Computes the subset of the intermediate correlation matrix that is pertinent to the count-continuous pairs
}
\description{
This function computes the submatrix of the intermediate correlation matrix of the multivariate normal distribution. It is relevant to the count-continuous part of the data.
}
\usage{
intercor.NNP(lamvec, cmat, pmat)
}
\arguments{
  \item{lamvec}{
a vector of lambda values of length n1.
}
  \item{cmat}{
a (n1+n2)x(n1+n2) matrix of specified correlations.
}
  \item{pmat}{
a n2x4 matrix where each row includes the four coefficients (a,b,c,d) of the Fleishman's system.
}
}
\details{
Calculations are done by combining the methods described in Demirtas, Hedeker and Mermelstein (2012) and Amatya and Demirtas (2017).
}

\value{
Returns an intermediate correlation matrix of size n1 x n2
}

\references{
Amatya, A. and Demirtas, H. (2017). PoisNor: An R package for generation of multivariate data with Poisson and normal marginals. Forthcoming in Communications in Statistics--Simulation and Computation.

Demirtas, H., Hedeker, D. and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346. 
}

\examples{
\dontrun{
pmat = matrix(c(
   0.1148643, 1.0899150, -0.1148643, -0.0356926,
  -0.0488138, 0.9203374,  0.0488138,  0.0251256,
  -0.2107427, 1.0398224,  0.2107427, -0.0293247), nrow=3, byrow=TRUE)

lamvec = c(0.5,0.7,0.9)

cmat = matrix(c(
  0.342,  0.090, 0.141,
  0.297, -0.022, 0.177,
 0.294, -0.044, 0.129), nrow=3, byrow=TRUE)

intercor.NNP(lamvec, cmat, pmat)
}
}
