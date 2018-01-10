\name{PoisNonNor-package}
\alias{PoisNonNor-package}
\alias{PoisNonNor}
\docType{package}
\title{
Simultaneous generation of count and continuous data with Poisson and continuous marginals
}
\description{
A package for simulating multivariate data with count and continuous variables with a pre-specified correlation matrix and marginal distribution. The count variables are assumed to have Poisson distribution, and continuous variables can take any shape that is allowed by the Fleishman polynomials. This mixed data generation scheme is a combination of the normal to anything principle for the count part, and multivariate continuous data generation mechanism via the Fleishman polynomials.
}
\details{
\tabular{ll}{
Package: \tab PoisNonNor\cr
Type: \tab Package\cr
Version: \tab 1.4\cr
Date: \tab 2018-01-10\cr
License: \tab GPL-2 | GPL-3\cr
}
This package consists of eleven functions. 

The functions \code{\link{bounds.corr.GSC.NN}}, \code{\link{bounds.corr.GSC.NNP}}, and \code{\link{bounds.corr.GSC.PP}} return the lower and upper bounds of the pairwise correlation of continuous-continuous, continuous-count, and count-count pairs, respectively. The function \code{\link{Validate.correlation}} validates the specified quantities to avoid obvious correlation matrix specification errors in regarding to the correlation matrix. The functions \code{\link{intercor.NN}}, \code{\link{intercor.NNP}}, and \code{\link{intercor.PP}} give the intermediate normal correlation matrix for continuous-continuous, continuous-count, and count-count combinations, respectively. The function \code{\link{intercor.all}} returns the final intermediate correlation matrix by combining the three parts of correlation together. The function \code{\link{Param.fleishman}} calculates the Fleishman coefficient. The engine function \code{\link{RNG_P_NN}} generates mixed data in accordance with the specified marginal and correlation matrix. 

n1, n2, and n=n1+n2 stand for the number of count, continuous, and the total number of the variables, respectively. By design, the first n1 variables are count, and the last n2 variables are continuous in the generated data matrix.
}
\author{
Hakan Demirtas, Yaru Shi, Rawan Allozi

Maintainer: Rawan Allozi <ralloz2@uic.edu>
}
\references{
Amatya, A. and Demirtas, H. (2017). PoisNor: An R package for generation of multivariate data with Poisson and normal marginals. Communications in Statistics--Simulation and Computation, 46(3), 2241-2253.

Demirtas, H., Hedeker, D. and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346.  

Fleishman A.I. (1978). A method for simulating non-normal distributions. Psychometrika, 43(4), 521-532.

Vale, C.D. and Maurelli, V.A. (1983). Simulating multivariate nonnormal distributions. Psychometrika, 48(3), 465-471. 
}