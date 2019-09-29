# Loading Lab 4 Data

library(readr)
library(data.table)
library(tidyverse)
data1 <- read.csv(file = "20190329_SEAMAP_csv/BGSREC.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data2 <- read.csv(file = "20190329_SEAMAP_csv/CRUISES.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data3 <- read.csv(file = "20190329_SEAMAP_csv/CTDCASTREC.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data4 <- read.csv(file = "20190329_SEAMAP_csv/CTDREC.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data5 <- read.csv(file = "20190329_SEAMAP_csv/ENVREC.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data6 <- read.csv(file = "20190329_SEAMAP_csv/GLFREC.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data7 <- read.csv(file = "20190329_SEAMAP_csv/INGEST_DATA.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data8 <- read.csv(file = "20190329_SEAMAP_csv/INVREC.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data9 <- read.csv(file = "20190329_SEAMAP_csv/ISTREC.csv", sep = ",",
                  header = T, stringsAsFactors = F)

data10 <- read.csv(file = "20190329_SEAMAP_csv/NEWBIOCODESBIG.csv", sep = ",",
                   header = T, stringsAsFactors = F)

data11 <- read.csv(file = "20190329_SEAMAP_csv/SHRREC.csv", sep = ",",
                   header = T, stringsAsFactors = F)

data12 <- read.csv(file = "20190329_SEAMAP_csv/STAREC.csv", sep = ",",
                   header = T, stringsAsFactors = F)

data13 <- read.csv(file = "20190329_SEAMAP_csv/STAREC_rev20190402.csv", sep = ",",
                   header = T, stringsAsFactors = F)

data14 <- read.csv(file = "20190329_SEAMAP_csv/VESSELS.csv", sep = ",",
                   header = T, stringsAsFactors = F)

