#' Binomial Function
#'
#' @param iter Number Of Iterations
#' @param n Sample Size
#' @param p Probability Of Success
#' @importFrom graphics barplot
#'
#' @returns Binomial Distribution Plot
#' @export
#'
#' @examples
#' \dontrun{mybin(iter=100, n=10, p=0.7)}
#'
mybin = function(iter=100, n=10, p=0.7){ #iter=iterations,n=sample size,p=probability
  sam.mat = matrix(NA, nrow=n, ncol=iter, byrow=TRUE) #Matrix to hold samples

  succ = c() #Make a vector to hold the number of successes in each trial

  for( i in 1:iter){
    sam.mat[,i] = sample(c(1,0), n, replace=TRUE, prob=c(p,1-p)) #Fill each column with a new sample
    succ[i] = sum(sam.mat[,i]) #Calculate sum from the sample
  }

  #Make a table of successes
  succ.tab = table(factor(succ,levels=0:n))

  #Make a barplot of the proportions
  barplot(succ.tab/(iter), col=rainbow(n+1), main="Binomial simulation", xlab="Number of successes")
  succ.tab/iter
}

