% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/line.graph.R
\name{line.graph}
\alias{line.graph}
\title{Line Graph}
\usage{
line.graph(x, ...)
}
\arguments{
\item{x}{numeric object to be plotted.}

\item{...}{additional arguments to be passed to the \code{\link[graphics]{plot}} function.}
}
\value{
A line graph of the estimated density distribution of a variable.
}
\description{
Function to plot the estimated density values of a variable as a line.
}
\examples{
line.graph(Temp$Temperature[Temp$City == "SanFrancisco"])
line.graph(IceCream$barsold)
}
\seealso{
\code{\link[graphics]{plot}}, \code{\link[graphics]{hist}}
}
