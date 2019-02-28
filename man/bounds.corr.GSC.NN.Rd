\name{bounds.corr.GSC.NN}
\alias{bounds.corr.GSC.NN}
\title{
Computes the approximate lower and upper bounds of the correlation matrix entries for the continuous pairs
}
\description{
This function calculates the approximate lower and upper bounds for all continuous pairs by the method in Demirtas and Hedeker (2011).
}
\usage{
bounds.corr.GSC.NN(pmat)
}
\arguments{
  \item{pmat}{
a n2x4 matrix where each row includes the four coefficients (a,b,c,d) of the Fleishman's system. 
}
}
\details{
The approximate correlation bounds are computed via the 'Generate, Sort, and Correlate' (GSC) technique, proposed by Demirtas and Hedeker (2011).
}
\value{
Returns a list with two components
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
pmat = matrix(c(
   0.1148643, 1.0899150, -0.1148643, -0.0356926,
  -0.0488138, 0.9203374,  0.0488138,  0.0251256,
  -0.2107427, 1.0398224,  0.2107427, -0.0293247), nrow=3, byrow=TRUE)

bounds.corr.GSC.NN (pmat) 
}
}