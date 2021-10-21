# a
# pokaż dostępne zbiory danych
data(package=.packages(all.available=TRUE))

# wczytaj dane z pliku
# nie `research <- load('1/research.RData')`!
load('1/research.RData')
new_research <- research
new_research


# b
# wczytaj zbiór danych z biblioteki
library(boot)
data(beaver)
beaver

# zapisz dane do pliku
save(beaver, file='1/beaver.RData')
