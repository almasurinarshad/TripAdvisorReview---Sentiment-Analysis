#Data Preparation
install.packages("tidyverse")
install.packages("plyr")
install.packages("lubridate")
install.packages("parsedate")


library(tidyverse) 
library(plyr) 
library(lubridate)
library(parsedate)

Sys.setlocale("LC_ALL","English")

getwd()
setwd("C:/Users/ddatuarshad/OneDrive - Hitachi Vantara/Desktop/DSC722Data")
restourant1<-read.csv("1. DiningInTheDarkKL.csv", header = FALSE, sep = ",", stringsAsFactors = FALSE)
colnames(restourant1) <- c("Review Date","Review Rating", "Review Title", "Review Body")
restourant1$`Review Date`  <- dmy(restourant1$`Review Date`)
restourant1$'Restourant Name' <- "DiningInTheDarkKL"
restourant1 <-head(restourant1, 200)

restourant2<-read.csv("2. Nobu Kuala Lumpur.csv", header = FALSE, sep = ",", stringsAsFactors = FALSE)
colnames(restourant2) <- c("Review Date","Review Rating", "Review Title", "Review Body")
restourant2$`Review Date`  <- dmy(restourant2$`Review Date`)
restourant2$'Restourant Name' <- "Nobu Kuala Lumpur"
restourant2 <-head(restourant2, 200)

restourant3<-read.csv("3. El Cerdo.csv", header = FALSE, sep = ",", stringsAsFactors = FALSE)
colnames(restourant3) <- c("Review Date","Review Rating", "Review Title", "Review Body")
restourant3$`Review Date`  <- dmy(restourant3$`Review Date`)
restourant3$'Restourant Name' <- "El Cerdo"
restourant3 <-head(restourant3, 200)

restourant4<-read.csv("4. Bijan.csv", header = FALSE, sep = ",", stringsAsFactors = FALSE)
colnames(restourant4) <- c("Review Date","Review Rating", "Review Title", "Review Body")
restourant4$`Review Date`  <- dmy(restourant4$`Review Date`)
restourant4$'Restourant Name' <- "Bijan"
restourant4 <-head(restourant4, 200)

restourant5<-read.csv("5. Betel Leaf.csv", header = FALSE, sep = ",", stringsAsFactors = FALSE)
colnames(restourant5) <- c("Review Date","Review Rating", "Review Title", "Review Body")
restourant5$`Review Date`  <- dmy(restourant5$`Review Date`)
restourant5$'Restourant Name' <- "Bijan"
restourant5 <-head(restourant5, 200)

rest_data<- rbind(restourant1,restourant2,restourant3,restourant4,restourant5)

write.csv2(rest_data, "AllRestourant_Cleaned.csv")

