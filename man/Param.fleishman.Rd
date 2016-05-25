\name{Param.fleishman}
\alias{Param.fleishman}

\title{
Calculates the Fleishman coefficients
}
\description{
This function calculates the four coefficients in the Fleishman system given skewness and kurtosis values.
}
\usage{
Param.fleishman(rmat)
}

\arguments{
  \item{rmat}{
a n2x2 matrix that includes skewness and kurtosis values for each continuous variable, where the first and second columns represent skewness and kurtosis, respectively. 
}
}
\value{
Returns a matrix of size n2x4 where rows and columns represent variables and coefficients, respectively. 
}
\references{
Fleishman A.I. (1978). A method for simulating non-normal distributions. Psychometrika, 43(4), 521-532.
}
\examples{
\dontrun{
rmat = matrix(c(-0.5486,-0.2103, 0.3386, 0.9035, 1.0283, 0.9272), byrow=TRUE, ncol=2)
Param.fleishman(rmat)
}
}