# a
list1 <- list(strings_v=c("asdf", "abc", "xyz"), 
              nums_m=matrix(data=1:9, nrow=3, ncol=3, byrow=TRUE),
              logic_m=matrix(data=TRUE, nrow=2, ncol=4, byrow=FALSE))
print(list1)
typeof(list1)

# MARGIN=1`: the manipulation is performed on rows
# MARGIN=2`: the manipulation is performed on columns
# MARGIN=c(1,2)` the manipulation is performed on rows and columns
apply(list1$nums_m, MARGIN=c(1, 2), FUN=sqrt)
sqrt(list1$nums_m)


# b
n <- 10
# generate a frame with vectors of random values
research <- data.frame(
  smoking = sample(c(TRUE, FALSE), n, replace=TRUE),
  sexes = sample(c('M', 'F'), n, replace=TRUE),
  ages = sample(seq(1:100), n, replace=TRUE)
)
research

# check data types of each column
sapply(research, FUN=class)

# count occurrences of values in a column
table(research$sexes)

research

# save data to a file
save(research, file='1/research.RData')
