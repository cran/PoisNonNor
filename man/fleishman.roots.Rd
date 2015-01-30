\name{fleishman.roots}
\alias{fleishman.roots}
\title{
An auxiliary function that is called by Param.fleishman function
}
\description{
This function sets up formulae that are needed at the subsequent stages.
}
\usage{
fleishman.roots(p, r)
}

\arguments{
  \item{p}{
a vector of length three that contains the Fleishman coefficients.
}
  \item{r}{
a vector of length two that contains skewness and kurtosis values. 
}
}
\references{
Fleishman A.I. (1978). A method for simulating non-normal distributions. Psychometrika, 43, 521-532.
}
\seealso{
\code{\link{Param.fleishman}}
}
