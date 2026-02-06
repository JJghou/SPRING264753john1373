#' My Standard Deviation Function
#'
#' @param x Numerical Vector
#' @param na.rm Logical Indicating Whether To Remove NA Values Before Computation
#' @importFrom stats var
#'
#' @returns Standard Deviation Of The Numeric Vector
#' @export
#'
#' @examples 1
mysd <- function(x, na.rm = TRUE) {
    if(na.rm) {
      x <- x[!is.na(x)]
    }
    sqrt(var(x))
}

mysd(x = 1:10)

