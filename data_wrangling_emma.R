##setting wd
getwd()

##importing data
WQ_1984_1990 <- read.csv("./Data/Raw/Other Sites/WQ_1984_1990.csv")
WQ_1991_2001 <- read.csv("./Data/Raw/Other Sites/WQ_1991_2001.csv")
WQ_2002_2012 <- read.csv("./Data/Raw/Other Sites/WQ_2002_2012.csv")
WQ_2013_2023 <- read.csv("./Data/Raw/Other Sites/WQ_2013_2023.csv")

##finding site names in each dataframe
unique(WQ_1984_1990$MonitoringStation)
unique(WQ_1991_2001$MonitoringStation)
unique(WQ_2002_2012$MonitoringStation)
unique(WQ_2013_2023$MonitoringStation)

##creating separate databases by site and time
##1984-1990
EE3.2_1984_1990 <- WQ_1984_1990[WQ_1984_1990$MonitoringStation=="EE3.2",]
EE3.3_1984_1990 <- WQ_1984_1990[WQ_1984_1990$MonitoringStation=="EE3.3",]
ET10.1_1984_1990 <- WQ_1984_1990[WQ_1984_1990$MonitoringStation=="ET10.1",]
ET8.1_1984_1990 <- WQ_1984_1990[WQ_1984_1990$MonitoringStation=="ET8.1",]
ET9.1_1984_1990 <- WQ_1984_1990[WQ_1984_1990$MonitoringStation=="ET9.1",]
##1991-2001
ET10.1_1991_2001 <- WQ_1991_2001[WQ_1991_2001$MonitoringStation=="ET10.1",]
EE3.2_1991_2001 <- WQ_1991_2001[WQ_1991_2001$MonitoringStation=="EE3.2",]
ET8.1_1991_2001 <- WQ_1991_2001[WQ_1991_2001$MonitoringStation=="ET8.1",]
ET9.1_1991_2001 <- WQ_1991_2001[WQ_1991_2001$MonitoringStation=="ET9.1",]
EE3.3_1991_2001 <- WQ_1991_2001[WQ_1991_2001$MonitoringStation=="EE3.3",]
##2002-2012
BXK0031_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="BXK0031",]
EE3.2_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="EE3.2",]
EE3.3_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="EE3.3",]
ET10.1_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="ET10.1",]
ET8.1_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="ET8.1",]
ET9.1_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="ET9.1",]
MNK0146_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="MNK0146",]
POK0087_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="POK0087",]
XAK7810_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="XAK7810",]
XCI4078_2002_2012 <- WQ_2002_2012[WQ_2002_2012$MonitoringStation=="XCI4078",]
##2013-2023
BXK0031_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="BXK0031",]
EE3.2_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="EE3.2",]
EE3.3_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="EE3.3",]
ET10.1_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="ET10.1",]
ET8.1_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="ET8.1",]
ET9.1_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="ET9.1",]
MNK0146_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="MNK0146",]
POK0087_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="POK0087",]
XAK7810_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="XAK7810",]
XCI4078_2013_2023 <- WQ_2013_2023[WQ_2013_2023$MonitoringStation=="XCI4078",]

##combining dataframes by site 
library(tidyverse)
library(tidyr)
library(dplyr)


# BXK0031_list <- list(BXK0031_2002_2012, BXK0031_2013_2023)
# BXK0031 <- Reduce(function(x, y) merge(x, y, all=TRUE), BXK0031_list) 
# View(BXK0031)

BXK0031 <- rbind(BXK0031_2002_2012, BXK0031_2013_2023)

#EE3.2_list <- list(EE3.2_1984_1990, EE3.2_1991_2001, EE3.2_2002_2012, EE3.2_2013_2023)
#EE3.2 <- Reduce(function(x, y) merge(x, y, all=TRUE), EE3.2_list) 
#EE3.2_a <- merge(EE3.2_1984_1990, EE3.2_1991_2001, EE3.2_2002_2012, EE3.2_2013_2023, by='Station', all=T)

# EE3.2_b <- EE3.2_1984_1990 %>%
#   left_join(EE3.2_1991_2001, by='MonitoringStation') %>%
#   left_join(EE3.2_2002_2012, by='MonitoringStation') %>%
#   left_join(EE3.2_2013_2023, by='MonitoringStation')
# View(EE3.2_b)

EE3.2 <- rbind(EE3.2_1984_1990, EE3.2_1991_2001, EE3.2_2002_2012, EE3.2_2013_2023)
