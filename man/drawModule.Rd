% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drawModule.R
\name{drawModule}
\alias{drawModule}
\title{Draw Single Module}
\usage{
drawModule(moduleNR, graph, title = "", nodes, colors,
  save.image = TRUE, close.cycnets.afterwards = FALSE)
}
\arguments{
\item{moduleNR}{number of the module, that should be drawn.}

\item{graph}{an \code{\link[igraph]{igraph}} object, which can be generated with
\code{\link{generateNetwork}}.}

\item{title}{a name for the Cytoscape session.}

\item{nodes}{\code{\link[data.table]{data.table}} with data containing the nodes.
It is contained in the output list of \code{\link{identifyModules}}.}

\item{colors}{a colour palette as returned from \code{\link[grDevices]{rainbow}}
for colouring the different modules.}

\item{save.image}{TRUE, if the modules should be saved as png files.}

\item{close.cycnets.afterwards}{TRUE, if the windows in the cytoscape environment should be closed
after drawing. This might be useful repeated function call.}
}
\description{
Draw Single Module
}
\references{
\insertRef{Shannon2003}{MoDentify}

\insertRef{Smoot2011}{MoDentify}

\insertRef{RCy3}{MoDentify}
}
\keyword{internal}
