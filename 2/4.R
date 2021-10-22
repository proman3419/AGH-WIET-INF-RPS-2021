get_stats <- function(v) {
  library(base)
  library(stats)
  library(e1071)
  library(psych)
  
  statistics <- data.frame(
    min = min(v),
    max = max(v),
    sr.arytmetyczna = mean(v),
    dlugosc = length(v),
    mediana = median(v),
    rozstep.miedzykwartylowy = IQR(v), # q[0.75] - q[0.25]
    wariancja = var(v),
    odchylenie.standardowe = sd(v),
    medianowe.odchylenie.bezwzgledne = mad(v),
    kurtoza = kurtosis(v), # miara koncentrancji
    skosnosc = skewness(v), # miara asymetryczności
    sr.geometryczna = geometric.mean(v),
    sr.harmoniczna = harmonic.mean(v)
  )
  
  statistics
}

pretty_stats <- function(v, label) {
  print(label)
  print(get_stats(v))
  writeLines("")
}

library(boot)
data(catsM)
catsM

pretty_stats(catsM$Bwt, "Bwt")
pretty_stats(catsM$Hwt, "Hwt")
pretty_stats(catsM$Bwt - catsM$Hwt, "Bwt - Hwt")
