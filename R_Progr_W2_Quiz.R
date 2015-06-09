# Question 1
cube <- function(x, n) {
     x^3
}

# Positioning - 3 is mapped to x
cube(3)

# Question 2

# if statement can only test one value, not vector
x <- 1:10
if(x > 5) {
     x <- 0
}

# Question 3

f <- function(x) {
     
     g <- function(y) {
          y + z
     }
     
     z <- 4
     x + g(x)
}

z <- 10
f(3)

# x + g(x) = 3 + g(3), where g(3) = 3 + 4 = 7
# Use of inner scope, thus z <- 4 instead of z <- 10

# Question 4

x <- 5
y <- if(x < 3) {
     NA
} else {
     10
}

# Question 5

h <- function(x, y = NULL, d = 3L) {
     
     z <- cbind(x, d)
     
     if(!is.null(y))
          z <- z + y
     else
          z <- z + f
     
     g <- x + y / z
     
     if(d == 3L)
          return(g)
     
     g <- g + 10
     g
}

# x, y, d as parameters. Both z and g are localized with assignment. f is free
