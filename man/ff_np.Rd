% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ff_np.R
\name{ff_np}
\alias{ff_np}
\title{Parse a binary variable as 'n' and 'percent'}
\usage{
ff_np(var, data = dt, dp = 1)
}
\arguments{
\item{var}{a categorical variable}

\item{data}{a data frame (or data.table)}

\item{dp}{number of decimal places in formatted response}
}
\description{
Return a list that summarises the count (n) and percentage of a vector
}
\examples{
# Create data.frame and summarise proportion of A's and B's
set.seed(1)
dt <- data.frame(choice=sample(c("A", "B"), 100, replace=TRUE))
table(dt$choice)
npct <- ff_np(choice, data=dt)
# choice
#    v  n pct
# 1: A 52  52
# 2: B 48  48
}
\keyword{dsbc}
\keyword{rmarkdown}

