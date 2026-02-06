#' My Standard Deviation Function
#'
#' @param Numerical Vector
#' @param na.rm Logical Indicating Whether To Remove NA Values Before Computation
#' @importFrom stats var
#'
#' @returns Standard Deviation Of The Numeric Vector
#' @export
#'
#' @examples
mysd <- function(x, na.rm = TRUE) {
    if(na.rm) {
      x <- x[!is.na(x)]
    }
    sqrt(var(x))
}
