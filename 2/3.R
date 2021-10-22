# rozdziela wektor na podwektory o zawartości % wejściowego wektora
# prop w formacie (x[%], y[%], z[%], ...)
# przez stosowanie zaookrągleń w niektórych przypadkach zostają
# elementy nadmiarowe, które dołączane są do ostatniego podwektora
splitIntoVectors <- function(v, prop) {
  # musi być 100% w sumie
  stopifnot(sum(prop) == 100)
  
  print(prop)
  
  n <- length(v)
  m <- length(prop)
  i <- 1
  prop_i <- 1
  res <- list()

  repeat {
    temp <- c()
    i_end <- i + floor(prop[prop_i]/100 * n) - 1
    for (j in i:i_end) {
      temp <- append(temp, v[j])
    }
    res[[prop_i]] <- temp
    i <- i_end + 1
    prop_i <- prop_i + 1
      
    if (i > n) {
      break
    }
    
    if (prop_i > m) {
      temp <- c()
      for (j in i:n) {
        temp <- append(temp, v[j])
      }
      res[[m]] <- temp
      break
    }
  }

  res
}

n <- 10
v <- 1:n
prop <- c(10, 20, 30, 20, 10, 10)
splitIntoVectors(v, prop)
