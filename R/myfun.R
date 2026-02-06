getwd()
dir()

myfun <- function(x) {
  y <- x^2
  plot(x,y)
  list(x = x, y = y)
}

myfun(x = 1:10)

