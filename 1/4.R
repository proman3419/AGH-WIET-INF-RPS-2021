# a
# wczytaj zbiór danych z biblioteki
library(boot)
data(beaver)
beaver

# rozwiązanie pod konkretny problem
# iloczyn skalarny
calculate_dot_product <- function(data, v1_i, v2_i) {
  dot_product <- 0
  
  for (i in 1:dim(data)[1]) {
    dot_product <- dot_product + data[i,v1_i] * data[i,v2_i]
  }
  
  dot_product
}

calculate_dot_product(beaver, 3, 4)


# b
count_zeros <- function(v) {
  cnt <- 0
  for (i in 1:length(v)) {
    cnt <- cnt + (v[i] == 0)
  }
  cnt
}

v <- c(3, 5, 0, 3, 1, 15, 0)
count_zeros(v)


# c
find_first_last_true <- function(v) {
  res <- c(NA, NA)
  
  for (i in 1:length(v)) {
    if (v[i]) {
      if (is.na(res[1])) {
        res[1] <- i
      }
      res[2] <- i
    }
  }
  
  res
}

v <- sample(c(TRUE, FALSE), 10, replace=TRUE)
v
find_first_last_true(v)


# d
# moda
mode <- function(v) {
  cnt <- 1
  max_cnt <- 1
  v <- sort(v)
  curr_mode <- v[1]
  max_mode <- v[1]

  for (i in 2:length(v)) {
    if (v[i] == v[i-1]) {
      cnt <- cnt + 1
    } else {
      if (cnt > max_cnt) {
        max_cnt <- cnt
        max_mode <- curr_mode
      }
      cnt <- 1
      curr_mode <- v[i]
    }
  }
  
  if (cnt > max_cnt) {
    max_cnt <- cnt
    max_mode <- curr_mode
  } 

  max_mode
}

v <- c(1, 3, 16, 16, 16, 7, 7)
mode(v)
