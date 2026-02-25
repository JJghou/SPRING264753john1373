#' My Example Function
#'
#' @param x Numerical Value
#'
#' @returns Plot Of x Vs y, Where y Is X^2
#' @export
#'
#' @examples
#' \dontrun{myfun(x = 1:10)}
#'
myfun <- function(x) {
  y <- x^2
  plot(x,y)
  list(x = x, y = y)
}

