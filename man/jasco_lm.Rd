% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model.R
\name{jasco_lm}
\alias{jasco_lm}
\title{jasco_lm}
\usage{
jasco_lm(df, response, predictor, ...)
}
\arguments{
\item{response}{unquoted name of the response variable found in the tibble}

\item{predictor}{unquoted name of the response variable found in the tibble}

\item{data}{a tibble}
}
\description{
This is a wrapper for lm and a helper function for jasco_extract_lm.
}
\details{
For a given tibble, this function allows to specify response variable and predictor
in order to retrieve the coefficients of the linear model.
}
\examples{
jasco_lm(tibble::tibble(a = 1:10, b = seq(10, 100, 10)), response = b, predictor = a)
}
\keyword{jasco}
