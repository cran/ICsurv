\name{fast.PH.ICsurv.EM}
\alias{fast.PH.ICsurv.EM}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
EM algorithm for general interval-censored data under the proportional hazards model
}
\description{
This function is equivalent to the function "PH.ICsurv.EM" but runs much faster. 
}
\usage{
fast.PH.ICsurv.EM(d1, d2, d3, Li, Ri, Xp, n.int, order, g0, b0,  tol, t.seq, equal = TRUE)
}
\arguments{
  \item{d1}{vector indicating whether an observation is left-censored (1) or not (0).}
  \item{d2}{vector indicating whether an observation is interval-censored (1) or not (0).}
  \item{d3}{vector indicating whether an observation is right-censored (1) or not (0).}
  \item{Li}{the left endpoint of the observed interval, if an observation is left-censored its corresponding entry should be 0. }
  \item{Ri}{the right endpoint of the observed interval, if an observation is right-censored its corresponding entry should be Inf. }
  \item{Xp}{design matrix of predictor variables (in columns), should be specified without an intercept term.}
  \item{n.int}{the number of interior knots to be used.}
  \item{order}{the order of the basis functions.}
  \item{g0}{initial estimate of the spline coefficients; should be of length n.int+order.}
  \item{b0}{initial estimate of regression coefficients; should be of length dim(Xp)[2].}
  \item{tol}{the convergence criterion of the EM algorithm, see details for further description.}
  \item{t.seq}{an increasing sequence of points at which the cumulative baseline hazard function is evaluated.}
  \item{equal}{logical, if TRUE knots are spaced evenly across the range of the endpoints of the observed intervals and if FALSE knots are placed at quantiles.}
}
\details{
The above function fits the semiparametric proportional hazards model (PH), proposed in Wang et al. (2014+), to interval censored data via an EM algorithm. For a 
discussion of starting values, number of interior knots, order, and further details please see Wang et al. (2014+). The EM algorithm converges when the maximum of 
the absolute difference in the parameter estimates (to include the regression and spline coefficients) is less than tol. The Hessian matrix of the observed likelihood 
is given in the output. The variance-covariance matrix of the estimated regression and spline coefficients can be obtained by taking the inverse of the Hessian matrix.
When the Hessian matrix is singular, the variance matrix of the regression parameters is obtained by using the inverse of blocked matrix, which only involves taking inverse of lower dimensional matrices. To further provide robustness, the generalized inverse function "ginv" in the supporting package "MASS" is used in this case. 
A function in the supporting R package "matrixcalc" is used to check whether the Hessian matrix is singular.
}
\value{
  \item{b}{estimates of the regression coefficients.}
  \item{g}{estimates of the spline coefficients.}
  \item{hz}{estimated cumulative baseline hazard function evaluated at the points t.seq.}
  \item{Hessian}{the Hessian matrix. Its inverse is the variance covariance matrix of b and g.}
  \item{var.b}{the variance covariance matrix of b}
  \item{flag}{the indicator whether the Hessian matrix is non-singular. When flag=0, the variance estimate may not be accurate.}
  \item{AIC}{the Akaike information criterion.}
  \item{BIC}{the Bayesian information/Schwarz criterion.}
  \item{ll}{the value of the maximized log-likelihood.}
}

\references{
Wang, L., McMahan, C., and Hudgens, M. (2014+). A flexible and computationally efficient method for fitting the proportional hazards model to interval censored data. Submitted. 
}
