# a
list1 <- list(strings_v=c("asdf", "abc", "xyz"), 
              nums_m=matrix(data=1:9, nrow=3, ncol=3, byrow=TRUE),
              logic_m=matrix(data=TRUE, nrow=2, ncol=4, byrow=FALSE))
list1
typeof(list1)

# funkcja aplikowana na:
# MARGIN=1`: rzędy,
# MARGIN=2`: kolumny,
# MARGIN=c(1,2)`: oba
apply(list1$nums_m, MARGIN=c(1, 2), FUN=sqrt)
sqrt(list1$nums_m)


# b
n <- 10
# stwórz ramkę z wektorami o losowych wartościach
research <- data.frame(
  smoking = sample(c(TRUE, FALSE), n, replace=TRUE),
  sexes = sample(c('M', 'F'), n, replace=TRUE),
  ages = sample(seq(1:100), n, replace=TRUE)
)
research

# sprawdź typ danych dla każdej kolumny
sapply(research, FUN=class)

# zlicz wystąpienia wartości w kolumnie
table(research$sexes)

research

# zapisz dane do pliku
save(research, file='1/research.RData')
