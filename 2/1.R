# szereg rozdzielczy
generate_freq_distribution <- function(data) {
  # liczymy rozstęp próbki
  mini <- min(data)
  maxi <- max(data)
  R <- maxi - mini 
  print(R)
  
  # ustalamy liczbę klas
  k <- ceiling(1 + 3.222*log(length(data)))
  print(k)
  
  # wyznaczamy długość klasy
  b <- R/k
  print(b)
  
  freq_tab <- data.frame(nr.klasy = seq(1, k),
                         poczatek.klasy = 
                           ceiling(100*seq(from=mini, by=b, length.out=k))/100,
                         koniec.klasy = 
                           floor(100*seq(to=maxi, by=b, length.out=k))/100)
  
  freq_tab$srodek.klasy <- freq_tab$poczatek.klasy + 
    (freq_tab$koniec.klasy-freq_tab$poczatek.klasy)/2
  
  freq_tab$liczebnosc.klasy <- NA
  
  for (i in 1:k) {
    # wyrażenie w sumie ewaluuje się do booleana, który przy konwertowaniu na inta
    # przyjmuje wartości 0, 1 -> otrzymujemy count
    freq_tab$liczebnosc.klasy[i] <- sum(data > freq_tab$poczatek.klasy[i] &
                                          data <= freq_tab$koniec.klasy[i])
  }
  
  freq_tab
}

generate_freq_distribution_short <- function(data) {
  k <- ceiling(1 + 3.222*log(length(data)))
  table(cut(data, k))  
}

library(boot)
data(acme)
acme$market
generate_freq_distribution(acme$market)
generate_freq_distribution_short(acme$market)
