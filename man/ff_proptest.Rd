% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ff_proptest.R
\name{ff_proptest}
\alias{ff_proptest}
\title{Compare two proportions}
\usage{
ff_proptest(var, byvar, data = dt, dp = 1)
}
\arguments{
\item{var}{a binary variable}

\item{byvar}{a stratifying binary variable}

\item{data}{a data frame (or data.table)}

\item{dp}{number of decimal places in formatted response}
}
\value{
a table and a series of strings formatted for a scientific paper
}
\description{
Returns a list containing the confusion table, the two proportions,
and the difference in the proportions with a confidence interval
}
\examples{
# Create data.frame and summarise proportion of A's and B's
set.seed(1)
dd <- data.frame(
     X=sample(c(0,1), 100, replace=TRUE),
     strata=sample(c("A", "B"), 100, replace=TRUE))

with(dd, table(strata, X))
ff_proptest(X, strata, data=dd)
# $table

#      0  1
#   A 23 23
#   B 29 25

# $est1
# [1] "50.0\%"

# $est2
# [1] "53.7\%"

# $d
# [1] "3.7\%"

# $ci
# [1] "17.9\% to 25.4\%"
}
\keyword{dsbc}
\keyword{rmarkdown}

