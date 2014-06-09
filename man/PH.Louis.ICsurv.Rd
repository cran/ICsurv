\name{PH.Louis.ICsurv}
\alias{PH.Louis.ICsurv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculating the Hessian matrix using Louis's Method (1982)
}
\description{
Calculates the negative of the Hessian of the log of the observed data likelihood, obtained via Louis's method, evaluated at the last step of the EM algorithm described in Wang et al. (2014+). This 
is a support function for \code{\link{PH.ICsurv.EM}}.
}
\usage{
PH.Louis.ICsurv(b, g, bLi, bRi, d1, d2, d3, Xp)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{b}{estimates of the regression coefficients obtained at the convergence of the EM algorithm.}
  \item{g}{estimates of the spline coefficients obtained from at the convergence of the EM algorithm.}
  \item{bLi}{an I-spline basis matrix of dimension c(length(knots)+order-2, length(x)), corresponding to the left end points of the observed intervals.}
  \item{bRi}{an I-spline basis matrix of dimension c(length(knots)+order-2, length(x),), corresponding to the left end points of the observed intervals.}
  \item{d1}{vector indicating whether an observation is left-censored (1) or not (0).}
  \item{d2}{vector indicating whether an observation is interval-censored (1) or not (0).}
  \item{d3}{vector indicating whether an observation is right-censored (1) or not (0).}
  \item{Xp}{design matrix of predictor variables (in columns), should be specified without an intercept term.}
}
\details{
To obtain the Hessian matrix of the observed likelihood evaluated at the last step of the EM algorithm.  
}
\value{
  Hessian matrix.
}


\references{
Louis, T. (1982). Finding the observed information matrix when using the EM algorithm.  Journal of the Royal Statistical Society, Series B 44, 226-233.

Wang, L., McMahan, C., and Hudgens, M. (2014+). A flexible and computationally efficient method for fitting the proportional hazards model to interval censored data. Submitted. 
}
