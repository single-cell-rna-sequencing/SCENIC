% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runGenie3.R
\name{runGenie3}
\alias{runGenie3}
\title{runGenie3}
\usage{
runGenie3(exprMat, scenicOptions, nParts = 10, ...)
}
\arguments{
\item{exprMat}{Expression matrix}

\item{scenicOptions}{Fields used: genie3wm, genie3ll (int)}

\item{...}{Other arguments to pass to GENIE3 (e.g. ntrees=500)}
}
\value{
Writes the output as \code{getIntName(scenicOptions, "genie3ll")}
}
\description{
Runs GENIE3 and formats the output
}
\examples{
library(SCENIC)
scenicOptions <- readRDS("int/scenicOptions.Rds")

load("data/sceMouseBrain.RData")
exprMat <- counts(sceMouseBrain)

genesKept <- loadInt(scenicOptions, "genesKept")
exprMatrix_filtered <- exprMat[genesKept,]
exprMat_filtered <- log2(exprMatrix_filtered+1) 

runGenie3(exprMat_filtered, scenicOptions)
}
