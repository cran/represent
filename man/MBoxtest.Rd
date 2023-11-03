\name{MBoxtest}
\alias{MBoxtest}
\title{
Compute Box's M-statistic
}
\description{
Computes Box's M-statistic according to Section 2.4 in Jouan-Rimbaud et al (1998).
This statistic is used to compare the structures of the variance-covariance matrices of two multidimensional data sets.
This function is used by the function jrparams().
}
\usage{
MBoxtest(DATA, nmanvars)
}
\arguments{
  \item{DATA}{
  Matrix containing the weighted scores on the principal components (PCs) that have been computed for the two data sets to be compared.
  The first column of this matrix should contain a group indicator variable, which has a value equal to 1 for the first data set and a value equal to 2 for the second data set.
  The remaining columns contain the weighted PC scores for the two data sets.
  }
  \item{nmanvars}{
  Number of manifest variables in the original multidimensional data sets.
  }
}
\value{A list with two elements:
  \item{MB}{Box's M-statistic}
  \item{Sp}{Pooled covariance matrix}
}
\references{
Section 2.4 in: Jouan-Rimbaud D, Massart DL, Saby CA, Puel C: Determination of the representativity between two multidimensional data sets by a comparison of their structure. Chemometrics and Intelligent Laboratory Systems 40 (1998) 129-144.
}
\author{
Harmen Draisma
}

\seealso{
jrparams()
}
%\keyword{ Box's M statistic }
%\keyword{ Bartlett's statistic }
%\keyword{ variance-covariance matrix }
%\keyword{ representativity }
