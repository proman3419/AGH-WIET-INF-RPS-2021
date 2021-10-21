# a
# generate vectors
x <- seq(0, 20, 2)
y <- seq(0, 30, 3)

# bind the vectors into a matrix
A <- cbind(x, y)
print(A)

# transpose the matrix
t(A)

# multiply the matrix by a vector
y %*% A


# b
# generate a symmetric, diagonally dominant matrix
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

# calculate the determinant of a matrix
det(A)

# solve A*x = b
solve_linear_equations <- function(A, b) {
  library(matlib)
  
  # stop if not (dim(A)=m x n, dim(x)=n x 1, dim(b)=m x 1)
  stopifnot(all.equal(dim(A)[1], length(b)))
  
  # show ranks
  c(R(A), R(cbind(A, b)))
  
  showEqn(A, b)
  Solve(A, b, fractions=TRUE)
}

x <- solve_linear_equations(A, b)


# c
c <- c(14, 7, -12)

# add c as the last column
B <- cbind(A, c)
print(B)

d <- c(-99, 10, 13, 169)

# add d as the last row
G <- rbind(B, d)
print(G)


# d
colnames(G) <- c("Beatrice", "Ann", "Elise", "Sophia")
rownames(G) <- c("Rose", "Lily", "Orchid", "Dahlia")
print(G)
dim(G)
# dim is 4x4, the labels are not included


# e
A <- matrix(data=1:9, nrow=3, ncol=3, byrow=TRUE, 
            dimnames=list(c("r1", "r2", "r3"), c("c1", "c2", "c3")))
print(A)


# f
# couldn't find A, b such that the equations have one solution
x <- c(5, 10, 15)

# create an array with dimensions 3x3x2
Z <- array(x, dim=c(3, 3, 2))
print(Z)
