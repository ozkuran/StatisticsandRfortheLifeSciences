tab <- read.csv("msleep_ggplot2.csv")
class(tab)

head(tab)
dim(tab)

# c(tab$sleep_total, 1000)

plot(tab$brainwt, tab$sleep_total)

plot(tab$brainwt, tab$sleep_total, log="x")

summary(tab$sleep_total)

totalSleep18 <- tab[tab$sleep_total > 18,]
mean(totalSleep18$sleep_total)

which(tab$sleep_total > 18 & tab$sleep_rem < 3)

order(tab$sleep_total)

rank(tab$sleep_total)


idx <- match(c("Cotton rat"), tab$name)
tab[idx,]

fac <- factor(tab$order)
table(fac)

s = split(tab$sleep_total, tab$order)
mean(s[["Rodentia"]])
lapply(s, mean)
sapply(s, mean)

tapply(tab$sleep_total, tab$order, sd)