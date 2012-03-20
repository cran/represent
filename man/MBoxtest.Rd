\name{MBoxtest}
\alias{MBoxtest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Compute Box's M-statistic
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Computes Box's M-statistic according to Section 2.4 in Jouan-Rimbaud et al (1998).
This statistic is used to compare the structures of the variance-covariance matrices of two multidimensional data sets.
This function is used by the function jrparams().
}
\usage{
MBoxtest(DATA, nmanvars)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DATA}{
%%     ~~Describe \code{DATA} here~~
Matrix containing the weighted scores on the principal components (PCs) that have been computed for the two data sets to be compared.
The first column of this matrix should contain a group indicator variable, which has a value equal to 1 for the first data set and a value equal to 2 for the second data set.
The remaining columns contain the weighted PC scores for the two data sets.
}
  \item{nmanvars}{
%%     ~~Describe \code{nmanvars} here~~
Number of manifest variables in the original multidimensional data sets.
}
}
\references{
%% ~put references to the literature/web site here ~
Section 2.4 in: Jouan-Rimbaud D, Massart DL, Saby CA, Puel C: Determination of the representativity between two multidimensional data sets by a comparison of their structure. Chemometrics and Intelligent Laboratory Systems 40 (1998) 129-144.
}
\author{
%%  ~~who you are~~
Harmen Draisma
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
jrparams()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ Box's M statistic }
%\keyword{ Bartlett's statistic }
%\keyword{ variance-covariance matrix }
%\keyword{ representativity }% __ONLY ONE__ keyword per line
