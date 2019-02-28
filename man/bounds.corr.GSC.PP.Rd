\name{bounds.corr.GSC.PP}
\alias{bounds.corr.GSC.PP}
\title{
Computes the approximate lower and upper bounds of the correlation matrix entries for the count pairs
}
\description{
This function calculates the approximate lower and upper bounds for all count pairs by the method in Demirtas and Hedeker (2011).
}
\usage{
bounds.corr.GSC.PP(lamvec)
}
\arguments{
  \item{lamvec}{
a vector of lambda values of length n1.
}
}
\details{
The approximate correlation bounds are computed via the 'Generate, Sort, and Correlate' (GSC) technique, proposed by Demirtas and Hedeker (2011).
}
\value{
Returns a list with two components, both are matrices of size n1xn1. 
\item{min}{lower correlation bound matrix}
\item{max}{upper correlation bound matrix}
}
\references{
Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. The American Statistician, 65(2), 104-109.
}

\seealso{
\code{\link{bounds.corr.GSC.NNP}}, \code{\link{bounds.corr.GSC.PP}}
}
\examples{
\dontrun{
lamvec = c(0.5,0.7,0.9)

bounds.corr.GSC.PP(lamvec) 
}
}