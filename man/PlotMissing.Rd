% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotMissing.r
\name{PlotMissing}
\alias{PlotMissing}
\title{Plot missing values}
\usage{
PlotMissing(data)
}
\arguments{
\item{data}{input data to be profiled, in either \link{data.frame} or \link{data.table} format.}
}
\value{
a \link{data.table} object containing frequency, percentage and group of all missing values.
}
\description{
This function returns and plots frequency of missing values for each feature.
}
\examples{
# load packages
library(data.table)

# manipulate data
data <- data.table(iris)
for (j in 1:4) set(data, i=sample(150, j * 30), j, value = NA_integer_)

# plot and store missing values
plot_data <- PlotMissing(data)
plot_data
}
\keyword{plotmissing}

