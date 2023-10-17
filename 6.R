sieve_of_eratosthenes <- function(n) {
  prime <- rep(TRUE, n + 1)
  prime[1] <- prime[2] <- FALSE
  
  for (p in 2:sqrt(n)) {
    if (prime[p]) {
      for (i in p^2:p:n) {
        prime[i] <- FALSE
      }
    }
  }
  
  primes <- which(prime)
  return(primes)
}
max_number <- 100  # Change this to your desired maximum number
prime_numbers <- sieve_of_eratosthenes(max_number)
cat("Prime numbers up to", max_number, "are: ", prime_numbers, "\n")
