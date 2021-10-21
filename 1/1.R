# a
# stwórz wektory
x <- seq(0, 20, 2)
y <- seq(0, 30, 3)

# połącz wektory w macierz
A <- cbind(x, y)
A

# macierz transponowana
A_t <- t(A)
A_t

# wymnóż macierz przez wektor
A_t %*% y


# b
generate_sym_diag_dom_matrix <- function(dim) {
  stopifnot(dim > 0)
  A <- matrix(data=NA, nrow=dim, ncol=dim)
  
  for (i in 1:dim) {
    for (j in 1:dim) {
      if (i == j)
        A[i, j] = dim^2 + i + j
      else
        A[i, j] = (i + j) %% dim
    }
  }
  
  A
}

A <- generate_sym_diag_dom_matrix(3)
b <- c(23, 47, 113)

# wyznacznik macierzy
det(A)

solve_linear_equations <- function(A, b) {
  library(matlib)
  
  # przerwij jeżeli nie (dim(A)=m x n, dim(x)=n x 1, dim(b)=m x 1)
  stopifnot(all.equal(dim(A)[1], length(b)))
  
  showEqn(A, b)
  solve(A, b)
}

x <- solve_linear_equations(A, b)
x


# c
c <- c(14, 7, -12)

# dodaj wektor c do macierzy A jako ostatnią kolumnę
B <- cbind(A, c)
B

d <- c(-99, 10, 13, 169)

# dodaj d do macierzy B jako ostatni wiersz
G <- rbind(B, d)
G


# d
colnames(G) <- c("Beatrice", "Ann", "Elise", "Sophia")
rownames(G) <- c("Rose", "Lily", "Orchid", "Dahlia")
G
dim(G)
# dim(G)=4 x 4


# e
A <- matrix(data=1:9, nrow=3, ncol=3, byrow=TRUE, 
            dimnames=list(c("r1", "r2", "r3"), c("c1", "c2", "c3")))
A


# f
# stwórz tablicę o wymiarach 3x3x2
Z <- array(x, dim=c(3, 3, 2))
Z
