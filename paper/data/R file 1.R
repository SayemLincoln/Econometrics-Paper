library(dplyr)
#dataset 1
excrate <-read.csv(file = "Exchange Rate data.csv")
er1<- subset(excrate, excrate$ï..Country %in% c("China", "Japan", 
                                               "Korea, Rep.", "India",
                                                "Vietnam", "Malaysia", "Philippines",
                                               "Singapore", "Hong Kong SAR, China", 
                                               "Thailand", "Saudi Arabia", "Israel", 
                                               "Indonesia", "United Arab Emirates", 
                                               "Russian Federation", "Bangladesh", "Pakistan",
                                               "Sri Lanka", "Qatar", "Brunei Darussalam"
                                               ))
#dataset 2
HDI <- read.csv(file = "Human Development Index (HDI).csv")
hdi1<- subset(HDI, HDI$Country %in% c("China", "Japan", 
                                                "Korea, Rep.", "India",
                                                "Vietnam", "Malaysia", "Philippines",
                                                "Singapore", "Hong Kong SAR, China", 
                                                "Thailand", "Saudi Arabia", "Israel", 
                                                "Indonesia", "United Arab Emirates", 
                                                "Russian Federation", "Bangladesh", "Pakistan", 
                                                "Sri Lanka", "Qatar", "Brunei Darussalam"
))

#dataset 3
expimp <- read.csv(file = "Exports and imports (% of GDP).csv")
ei1<- subset(expimp, expimp$Country %in% c(" China", " Japan", 
                                                " Korea, Rep.", " India",
                                                " Vietnam", " Malaysia", " Philippines",
                                                " Singapore", "Hong Kong SAR, China", 
                                                " Thailand", " Saudi Arabia", " Israel", 
                                                " Indonesia", " United Arab Emirates", 
                                                " Russian Federation", " Bangladesh", " Pakistan",
                                                " Sri Lanka", " Qatar", " Brunei Darussalam"
))

ei2 <- as.data.frame(t(as.matrix(ei1)))

#dataset 4
GINI <- read.csv(file = "Income inequality, Gini coefficient.csv")
gi1<- subset(GINI, GINI$Country %in% c(" China", " Japan", 
                                           " Korea, Rep.", " India",
                                           " Vietnam", " Malaysia", " Philippines",
                                           " Singapore", "Hong Kong SAR, China", 
                                           " Thailand", " Saudi Arabia", " Israel", 
                                           " Indonesia", " United Arab Emirates", 
                                       Trade policy with US                            " Russian Federation", " Bangladesh", " Pakistan",
                                           " Sri Lanka", " Qatar", " Brunei Darussalam"
))

#dataset 5
Life <- read.csv(file = "Life expectancy index.csv")
le1<- subset(Life, Life$Country %in% c(" China", " Japan", 
                                       " Korea, Rep.", " India",
                                       " Vietnam", " Malaysia", " Philippines",
                                       " Singapore", "Hong Kong SAR, China", 
                                       " Thailand", " Saudi Arabia", " Israel", 
                                       " Indonesia", " United Arab Emirates", 
                                       " Russian Federation", " Bangladesh", " Pakistan",
                                       " Sri Lanka", " Qatar", " Brunei Darussalam"
))

#dataset 6
Trade<- read.csv(file = "Trade policy with US.csv")
t1<- subset(Trade, Trade$Country %in% c("China", "Japan", 
                                       "Korea, Rep.", "India",
                                       "Vietnam", "Malaysia", "Philippines",
                                       "Singapore", "Hong Kong SAR, China", 
                                       "Thailand", "Saudi Arabia", "Israel", 
                                       "Indonesia", "United Arab Emirates", 
                                       "Russian Federation", "Bangladesh", "Pakistan",
                                       "Sri Lanka", "Qatar", "Brunei Darussalam"
))

t2 <- subset(t1, t1$ï..year %in% c("1998", "1999", "2000", "2001", "2002",
                                   "2003", "2004", "2005", "2006", "2007",
                                   "2008", "2009", "2010", "2011", "2012",
                                   "2013", "2014", "2015", "2016", "2017", "2018"
                                   ))
write.csv(t2,"C:\\Users\\srlin\\Desktop\\econ capstone\\data\\New data\\Trade.csv", row.names = FALSE)
write.csv(le1,"C:\\Users\\srlin\\Desktop\\econ capstone\\data\\New data\\Life expec.csv", row.names = FALSE)
write.csv(gi1,"C:\\Users\\srlin\\Desktop\\econ capstone\\data\\New data\\GINI.csv", row.names = FALSE)
write.csv(ei1,"C:\\Users\\srlin\\Desktop\\econ capstone\\data\\New data\\ExpImp.csv", row.names = FALSE)
write.csv(er1,"C:\\Users\\srlin\\Desktop\\econ capstone\\data\\New data\\Exchange rate.csv", row.names = FALSE)
write.csv(hdi1,"C:\\Users\\srlin\\Desktop\\econ capstone\\data\\New data\\HDI.csv", row.names = FALSE)





