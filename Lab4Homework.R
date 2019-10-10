

#tapply & merge ----
load("~/Downloads/fish_data.Rdata")
library(tidyverse)
f <- fish; rm(fish)
pd <- tapply(X = f$parcel.density.m3, INDEX = list(f$transect.id) , FUN = mean)
d.pd <- as.data.frame(pd)
names(f)[names(f) == 'parcel.density.m3'] <- 'mean.density'
names(d.pd)[names(d.pd) == 'pd'] <- 'mean.density'
names(d.pd)[1] <- "transect"
pd2 <- tapply(X = f$mean.density, INDEX = list(f$transect.id), FUN = sd)
d.pd2 <- as.data.frame(pd2)
names(d.pd2)[names(d.pd2) == 'pd2'] <- 'mean.density'
names(d.pd2)[1] <- "transect"
mt <- merge(x = d.pd, y = d.pd2, by = c("mean.density", "transect"), all.x = T, no.dups = T)

#summarise & join ---- 
pdm = f %>% group_by(transect.id) %>% summarise (totaldensity = mean(mean.density))
d.pdm <- as.data.frame(pdm)
names(d.pdm)[names(d.pdm) == 'totaldensity'] <- 'total.density.of.fish'








#free style ----
plm <- f %>% group_by(depth_fac, year) %>% summarise(meanLength = sum(parcel.length.m))
quantile(f$parcel.length.m)
quantile(f$parcel.length.m, .05)
quantile(f$parcel.length.m, .95)
mean(f$parcel.length.m)




