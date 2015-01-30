\name{intercor.NN}
\alias{intercor.NN}
\title{
Computes the subset of the intermediate correlation matrix that is pertinent to the continuous pairs
}
\description{
This function computes the submatrix of the intermediate correlation matrix of the multivariate normal distribution. It is relevant to the continuous part of the data.
}
\usage{
intercor.NN(pmat, cmat)
}
\arguments{
  \item{pmat}{
a n2x4 matrix where each row includes the four coefficients (a,b,c,d) of the Fleishman's system.
}
  \item{cmat}{
a n2xn2 matrix of specified correlations for the continuous part.
}
}
\details{
Fleishman polynomials is a method to generate real-life non-normal distributions of variables by using their first four moments. It is based on the polynomial transformation, \eqn{Y = a + bZ + cZ^2 + dZ^3}, where Z follows a standard normal distribution and Y is standardized (zero mean and unit variance).

Normal-Normal correlation for a given continuous pair can be calculated by solving the following equation.

\eqn{r_{Y_1Y_2} = r_{Z_1Z_2}(b_1b_2+3b_1d_2+3d_1b_2+9d_1d_2) + r_{Z_1Z_2}^2(2c_1c_2)+r_{Z_1Z_2}^3(6d_1d_2)}
}
\value{
Returns an intermediate matrix of size n2xn2
}
\references{
Yahav, I. and Shmueli, G. (2012). On generating multivariate poisson data in management science applications. Applied Stochastic Models in Business and Industry, 28(1), 91-102.
}
\examples{
\dontrun{
pmat = matrix(c(
  0.1148643, 1.0899150, -0.1148643, -0.0356926,
  -0.0488138, 0.9203374,  0.0488138,  0.0251256,
  -0.2107427, 1.0398224,  0.2107427, -0.0293247), nrow=3, byrow=TRUE)
cmat = matrix(c(
  1.000,  0.100, 0.354,
  0.100,  1.000, 0.386,
  0.354,  0.386, 1.000),nrow=3,byrow=TRUE)

intercor.NN(pmat,cmat)
}
}
