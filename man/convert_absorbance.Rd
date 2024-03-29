% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_absorbance.R
\name{convert_absorbance}
\alias{convert_absorbance}
\title{convert_absorbance}
\usage{
convert_absorbance(data, coef)
}
\arguments{
\item{data}{a tibble with at least one column 'Absorbance'.}

\item{coef}{either the name of any chemical found in `chemicals_specs` or a
user-provided appropriate absorption coefficient (a named vector, eg. `setNames(7282, "chemical1")`)}
}
\description{
given a tibble containing a column 'Absorbance', the concentration of a chemical
that Abs is measured are calculated and attached to the tibble in the specified unit.
}
\examples{
convert_absorbance()
}
\keyword{jasco}
