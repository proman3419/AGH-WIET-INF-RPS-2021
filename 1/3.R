# a
# show all available data sets
data(package=.packages(all.available=TRUE))

# load data from a file
# not `research <- load('1/research.RData')`!
load('1/research.RData')
new_research <- research
new_research


# b
# load data set from a library
library(boot)
data(beaver)
beaver

# save data to a file
save(beaver, file='1/beaver.RData')
