\name{jrparams}
\alias{jrparams}
\title{
Assess similarity of two multidimensional data sets
}
\description{
  This function computes three types of parameters to assess the representativity of two multidimensional data sets by a comparison of their structure.
  Representativity is expressed as similarity of: I) principal component analysis (PCA) loadings patterns; II) variance-covariance matrix structures; III) data set centroid locations.
  All parameters are computed in principal component (PC) space.
  These parameters are described in a publication by Jouan-Rimbaud et al (1998).
}
\usage{
jrparams(BLOCK.1,BLOCK.2,ncomp=min(c(dim(BLOCK.1),dim(BLOCK.2))),Cscrit=0.6,Rscrit=0.6)
}
\arguments{
  \item{BLOCK.1}{
  First multivariate data set (a numeric matrix)
  }
  \item{BLOCK.2}{
  Second multivariate data set (a numeric matrix), to be compared with the first
  }
  \item{ncomp}{
  The number of PCs to compute the parameter values for
  }
  \item{Cscrit}{
  The value of the "C*" parameter corresponding to the value of Box's M statistic being equal to its critical value
  }
  \item{Rscrit}{
  The value of the "R*" parameter corresponding to the Mahalanobis distance being equal to its critical value
  }
}
\details{
For argument 'ncomp', the default is based on the smallest number of rows or columns (whichever is smaller) in either of both data sets to be compared.
This number should be a proxy for the minimum of the 'ranks' (i.e., the actual dimensionalities) of both data sets.

The default settings for the values of arguments 'Cscrit' and 'Rscrit' correspond to the values as recommended by Jouan-Rimbaud et al (1998) in their equations (9a) and (13a), respectively.
}
\value{
A numeric matrix with rows containing the computed values for in total six parameters that are described in Jouan-Rimbaud et al (1998).
The nomenclature for the parameters as in that publication has been adopted here.
Hence, the first two rows ("P" and "P*") of the output are informative of the similarity of the PCA loadings patterns of both data sets.
Rows 3 and 4 ("C" and "C*", respectively) are indicative of the similarity of the variance-covariance matrices.
Finally, rows 5 and 6 ("R" and "R*") represent the similarity of the data set centroid locations.
For all parameters, values equal to 1 indicate perfect similarity.
The number of columns of the output matrix depends on the value of 'ncomp'.
}
\references{
Jouan-Rimbaud D, Massart DL, Saby CA, Puel C: Determination of the representativity between two multidimensional data sets by a comparison of their structure. Chemometrics and Intelligent Laboratory Systems 40 (1998) 129-144.
}
\author{
Harmen Draisma
}
\note{
The function performs principal component analysis itself, so one can just input the original data sets (containing the original manifest variables).
In general it is wise to compute the parameter values only for the significant principal components.
Significance of principal components for both data sets to be compared can be assessed using e.g. scree plots, as available for instance in the 'psych' package.
}

\section{Warning}{
Unexpected results might occur if the two data sets to be compared are of different rank, and the number of principal components to retain has not been passed to jrparams() as well (not tested).
}

\examples{
#Load example data sets, 50 observations x 5 variables
data(DATASET.1)
data(DATASET.2)

#Assess representativity using all principal components
#(default; will be fine if both sets are of equal rank)
jrparams(DATASET.1, DATASET.2)

#Positive control: check similarity of DATASET.1 with itself
#(values for all parameters should be unity)
jrparams(DATASET.1, DATASET.1)
}
%\keyword{ Jouan-Rimbaud }
%\keyword{ representativity }
