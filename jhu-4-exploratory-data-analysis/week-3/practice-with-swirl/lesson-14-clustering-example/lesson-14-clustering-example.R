dim(ssd)

names(ssd[, 562:563])

table(ssd$subject)

sum(table(ssd$subject))

table(ssd$activity)

sub1 <- subset(ssd, subject == 1)

dim(sub1)

names(sub1[, 1:12])

myedit("showXY.R")

showMe(1:6)

mdist <- dist(sub1[ , 1:3])

hclustering <- hclust(mdist)

myplclust(hclustering, lab.col = unclass(sub1$activity))

mdist <- dist(sub1[, 10:12])

hclustering <- hclust(mdist)

myplclust(hclustering, lab.col = unclass(sub1$activity))

svd1 <- svd(scale(sub1[, -c(562, 563)]))

dim(svd1$u)

maxCon <- which.max(svd1$v[, 2])

mdist <- dist(sub1[, c(10:12, maxCon)])

hclustering <- hclust(mdist)

myplclust(hclustering, lab.col = unclass(sub1$activity))

names(sub1[maxCon])

kClust <- kmeans(sub1[ , -c(562, 563)], centers = 6)

table(kClust$cluster, sub1$activity)

kClust <- kmeans(sub1[ , -c(562, 563)], centers = 6, nstart = 100)

table(kClust$cluster, sub1$activity)

dim(kClust$centers)

laying <- which(kClust$size == 29)

plot(kClust$centers[laying, 1:12], pch = 19, ylab = "Laying Cluster")

names(sub1[ , 1:3])

walkdown <- which(kClust$size == 49)

plot(kClust$centers[walkdown, 1:12], pch = 19, ylab = "Walkdown Cluster")

doanthevu1910@gmail.com
rkPIYH4I677Kj9hL
