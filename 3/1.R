library(boot)
data(acme)
acme$market

# 1
boxplot(acme$market, acme$acme,
        horizontal = TRUE, names = c("market","acme"))

# 2
library(vioplot)
vioplot(acme$market, data = acme$acme)

# 3
plot(acme$market)
plot(acme$acme)

library(car)
scatterplot(acme$market, acme$acme)

# 4
a = 0
b = 10
plot(function(x) df(x, df1=3, df2=6), a, b, col="purple") # F(3, 6)
plot(function(x) dchisq(x, df=3), a, b, col="blue", add=TRUE) # chi kwadrat n=3
plot(function(x) dnorm(x, mean=0, sd=3), a, b, col="red", add=TRUE) # N(0, 3)
