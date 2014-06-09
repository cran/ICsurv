\name{Hemophilia}
\alias{Hemophilia}
\docType{data}
\title{
Hemophilia data
}
\description{
This data were collected as a part of a multi-center prospective study aimed at assessing the HIV-1 infection rate among people with hemophilia.
In particular, the individuals in the study were at risk from contracting HIV-1 from blood products made from donor's plasma. In this study,
544 patients were categorized into one of four groups based on their average annual dose of blood products. Specifically, patients were classified 
into high, medium, low, or no dose group. The goal of the study was to compare the HIV-1 infection rate between these dose groups. The time at which 
patients contracted HIV-1 is not known exactly, but were known to occur before, between, or after certain observation times. For more details 
pertaining to this data set see Goedert et al. (1989) and Kroner et al. (1994). 
}

\usage{data(Hemophilia)}
\format{
  A data frame with 544 observations on the following 8 variables.
  \describe{
    \item{\code{d1}}{Censoring indicator, 1 if patient's infection time was left censored, 0 otherwise.}
    \item{\code{d2}}{Censoring indicator, 1 if patient's infection time was interval censored, 0 otherwise.}
    \item{\code{d3}}{Censoring indicator, 1 if patient's infection time was right censored and, otherwise.}
    \item{\code{L}}{Left endpoint of the observation interval}
    \item{\code{R}}{Right endpoint of the observation interval}
    \item{\code{Low}}{Binary variable indicating the patient was a member of the low dose group.}
    \item{\code{Medium}}{Binary variable indicating the patient was a member of the medium dose group.}
    \item{\code{High}}{Binary variable indicating the patient was a member of the high dose group.}
  }
}

\references{
Goedert, J., Kessler, C., Adedort, L., Biggar, R., et al., 1989. A progressive-study of human immunodeficiency virus type-1 infection and the development of
AIDS in subjects with hemophilia. New England Journal of Medicine 321, 1141-1148.

Kroner, B., Rosenberg, P., Adedort, L., Alvord, W., Goedert, J., 1994. HIV-1 infection incidence among people with hemophilia in the United States and
Western Europe, 1978?1990. Journal of Acquired Immune Deficiency Syndromes 7, 279-286.

}

\keyword{datasets}