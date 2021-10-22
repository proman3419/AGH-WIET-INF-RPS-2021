# a
list1 <- list(
  strings_v = c("asdf", "abc", "xyz"), 
  nums_m = matrix(data=1:9, nrow=3, ncol=3, byrow=TRUE),
  logic_m = matrix(data=TRUE, nrow=2, ncol=4, byrow=FALSE)
)
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
badanie <- data.frame(
  czy_pali = sample(c(TRUE, FALSE), n, replace=TRUE),
  plec = sample(c('M', 'F'), n, replace=TRUE),
  wiek = sample(seq(1:100), n, replace=TRUE)
)
badanie

# sprawdź typ danych dla każdej kolumny
sapply(badanie, FUN=class)

# zlicz wystąpienia wartości w kolumnie
table(badanie$plec)

badanie

# zapisz dane do pliku
save(badanie, file='1/badanie.RData')
