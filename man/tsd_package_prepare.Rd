% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tsd_package.R
\name{tsd_package_prepare}
\alias{tsd_package_prepare}
\title{Prepare R package for TSD install}
\usage{
tsd_package_prepare(
  package,
  folder = package,
  repos = getOption("repos"),
  verbose = TRUE,
  zip = TRUE,
  ...
)
}
\arguments{
\item{package}{name of package. character.}

\item{folder}{character. folder to place all necessary files in}

\item{repos}{character vector. Addresses of CRAN mirror(s)}

\item{verbose}{logical. If function should be talkative.}

\item{zip}{logical, if folder should be zipped at the end}

\item{...}{additional arguments to functions \code{\link[utils]{install.packages}}
and \code{\link[utils]{available.packages}}}
}
\value{
returns nothing, but creates a folder and zip archive
}
\description{
This function will download a package
with all its dependencies to a zipped archive,
to them be installed within TSD using
\code{\link{tsd_package_install}}.
}
\examples{
\dontrun{
tsd_package_prepare("devtools")

tsd_package_prepare("dplyr", folder = "dplyr_pkg")

tsd_package_prepare("dplyr", repos = "https://cran.uib.no/", verbose = FALSE)

}
}
