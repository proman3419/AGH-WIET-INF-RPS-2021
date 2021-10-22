# import funkcji z zad 1
source("2/1.R")

prepare_data <- function(data) {
  n <- dim(data)[1]
  date_data <- vector("date", n)
  
  for (i in 1:n) {
    date <- as.Date(paste("1/", acme[i,1], sep=""), "%d/%m/%y")
  }
  
  date_data
}

library(boot)
data(acme)
acme

date_data <- prepare_data(acme)
date_data

# nie wiem do końca o co chodzi w poleceniu, ilość danych w każdym roku jest
# taka sama ale to co napisałem do tej pory może sie przydać
