# a
# pokaż dostępne zbiory danych
data(package=.packages(all.available=TRUE))

# wczytaj dane z pliku
# nie `badanie <- load('1/badanie.RData')`!
load('1/badanie.RData')
nowe_badanie <- badanie
nowe_badanie


# b
# wczytaj zbiór danych z biblioteki
library(boot)
data(beaver)
beaver

# zapisz dane do pliku
save(beaver, file='1/beaver.RData')
