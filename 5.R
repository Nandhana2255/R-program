fibonacci <- function(n) {
  if (n <= 0) {
    return(integer(0))
  } else if (n == 1) {
    return(0)
  } else {
    fib <- numeric(n)
    fib[1] <- 0
    fib[2] <- 1
    for (i in 3:n) {
      fib[i] <- fib[i - 1] + fib[i - 2]
    }
    return(fib)
  }
}
first_10_fib <- fibonacci(10)
cat("The first 10 Fibonacci numbers are: ", first_10_fib, "\n")
