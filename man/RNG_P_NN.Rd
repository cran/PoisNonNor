\name{RNG_P_NN}
\alias{RNG_P_NN}
\title{
Simultaneously generates count and continuous data
}
\description{
This function simulates count and continuous data, where the count part is assumed to follow a multivariate Poisson distribution and the continuous part can take any shape allowed by the Fleishman polynomials. A correlation matrix and marginal features (rate parameter for the count variables, and skewness and kurtosis parameters for the continuous variables must be supplied by users).
}
\usage{
RNG_P_NN(lamvec, cmat, rmat, norow, mean.vec, variance.vec)
}

\arguments{
  \item{lamvec}{
a vector of lambda values of length n1
}
  \item{cmat}{
specified correlation matrix 
}
  \item{rmat}{
a n2x2 matrix that includes skewness and kurtosis values for each continuous variable
}
  \item{norow}{
number of rows in the multivariate mixed data
}
\item{mean.vec}{
mean vector for continuous variables of length n2
}
\item{variance.vec}{
variance vector for continuous variables of length n2
}
}

\value{
Returns a data matrix of size norowx(n1+n2). By design, the first n1 variables are count, and the last n2 variables are continuous. 
}
\references{
Amatya, A. and Demirtas, H. (2015). PoisNor: An R package for simultaneous generation of multivariate data with Poisson and normal marginals. Journal of Statistical Computation and Simulation, (in press). 

Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. The American Statistician, 65(2):104-109.

Demirtas, H., Hedeker, D. and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346.  

Fleishman A.I. (1978). A method for simulating non-normal distributions. Psychometrika, 43, 521-532.

Vale, C.D. and Maurelli, V.A. (1983). Simulating multivariate nonnormal distributions. Psychometrika, 48(3), 465-471. 

Yahav, I. and Shmueli, G. (2012). On generating multivariate poisson data in management science applications. Applied Stochastic Models in Business and Industry, 28(1), 91-102.
}

\examples{
\dontrun{
lamvec = c(0.5,0.7,0.9)

cmat = matrix(c(
  1.000,  0.352,  0.265, 0.342,  0.090, 0.141,
  0.352,  1.000,  0.121, 0.297, -0.022, 0.177,
  0.265,  0.121,  1.000, 0.294, -0.044, 0.129,
  0.342,  0.297,  0.294, 1.000,  0.100, 0.354,
  0.090, -0.022, -0.044, 0.100,  1.000, 0.386,
  0.141,  0.177,  0.129, 0.354,  0.386, 1.000), nrow=6, byrow=TRUE)

rmat = matrix(c(-0.5486,-0.2103, 0.3386, 0.9035, 1.0283, 0.9272), byrow=TRUE, ncol=2)

norow=10e+5

mean.vec=c(1,0.5,100)
variance.vec=c(1,0.02777778,1000)

P_NN_data = RNG_P_NN(lamvec, cmat, rmat, norow, mean.vec, variance.vec)
}
}
