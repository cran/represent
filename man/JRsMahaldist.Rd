\name{JRsMahaldist}
\alias{JRsMahaldist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Compute Mahalanobis distance
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Computes Mahalanobis distance according to Section 2.5.1 in Jouan-Rimbaud et al (1998).
The distance takes into account both the distance between the centroids of two data sets, as well as the dispersion of the data around these centroids.
This function is used by the function jrparams() to assess representativity of two multidimensional data sets.
}
\usage{
JRsMahaldist(DATA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DATA}{
%%     ~~Describe \code{DATA} here~~
Matrix containing the weighted scores on the principal components (PCs) that have been computed for the two data sets to be compared.
The first column of this matrix should contain a group indicator variable, which has a value equal to 1 for the first data set and a value equal to 2 for the second data set.
The remaining columns contain the weighted PC scores for the two data sets.
}
}
\references{
%% ~put references to the literature/web site here ~
Section 2.5.1 in: Jouan-Rimbaud D, Massart DL, Saby CA, Puel C: Determination of the representativity between two multidimensional data sets by a comparison of their structure. Chemometrics and Intelligent Laboratory Systems 40 (1998) 129-144.
}
\author{
%%  ~~who you are~~
Harmen Draisma
}
\note{
%%  ~~further notes~~
The Mahalanobis distance is computed using the pooled variance-covariance matrix as defined in Section 2.4 of Jouan-Rimbaud et al (1998), and hence may differ somewhat from a 'regular' Mahalanobis distance as computed using e.g. the function mahalanobis() from the 'stats' package.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
jrparams(); MBoxtest()
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ Mahalanobis }
%\keyword{ Jouan-Rimbaud }% __ONLY ONE__ keyword per line
