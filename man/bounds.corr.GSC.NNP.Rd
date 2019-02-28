\name{bounds.corr.GSC.NNP}
\alias{bounds.corr.GSC.NNP}
\title{
Computes the approximate lower and upper bounds of the correlation matrix entries for the continuous-count pairs
}
\description{
This function calculates the approximate lower and upper bounds for all continuous-count pairs by the method in Demirtas and Hedeker (2011).
}
\usage{
bounds.corr.GSC.NNP(lamvec, pmat)
}

\arguments{
  \item{lamvec}{
a vector of lambda values of length n1.
}
  \item{pmat}{
a n2x4 matrix where each row includes the four coefficients (a,b,c,d) of the Fleishman's system.
}
}
\details{
The approximate correlation bounds are computed via the 'Generate, Sort, and Correlate' (GSC) technique, proposed by Demirtas and Hedeker (2011).
}
\value{
Returns a list with two components, both are matrices of size n1xn2 where n1 and n2 are the number of count and continuous variables, respectively.

\item{min}{lower correlation bound matrix}
\item{max}{upper correlation bound matrix}
}
\references{
Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. The American Statistician, 65(2), 104-109.
}
\seealso{
\code{\link{bounds.corr.GSC.NN}}, \code{\link{bounds.corr.GSC.PP}}
}
\examples{
\dontrun{
pmat = matrix(c(
   0.1148643, 1.0899150, -0.1148643, -0.0356926,
  -0.0488138, 0.9203374,  0.0488138,  0.0251256,
  -0.2107427, 1.0398224,  0.2107427, -0.0293247), nrow=3, byrow=TRUE)

lamvec = c(0.5,0.7,0.9)

bounds.corr.GSC.NNP(lamvec,pmat) 
}
}