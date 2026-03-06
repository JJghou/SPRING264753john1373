#' Normal Probability Curve
#'
#' @param mu the mean
#' @param sigma the deviation
#' @param a the value X is <= to
#' @importFrom graphics curve
#' @importFrom graphics polygon
#' @importFrom stats dnorm
#' @importFrom stats pnorm
#'
#' @returns Curve And Probability
#' @export
#'
#' @examples
#' #' \dontrun{myncurve(mu=10,sigma=5,a=6)}
#'
myncurve = function(mu, sigma, a){
  curve(dnorm(x=a,mean=mu,sd=sigma), xlim=c(mu-3*sigma, mu+3*sigma))
  list(mu = mu, sigma = sigma, a = a)
  xcurve=seq(a,length=1000) #Find Area Under Curve
  ycurve=dnorm(xcurve,mean=mu,sd=sigma)
  polygon(c(a,xcurve),c(0,ycurve),col="Red") #Plot Area Under Curve
  prob=1-pnorm(a,mean=mu,sd=sigma) #Calculate Probability
  prob=round(prob,4)
  prob
}
