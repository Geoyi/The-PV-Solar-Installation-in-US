
#title: "Who are installing solar panels in US and the future of solar engery?"
#author: Zhuangfang Yi. Find her: https://geoyi.org.


setwd("C:/Data Science Fundation with R/The Data Incubator_Datasets/1. US solar energy cost-effiency/1. US solar installation and cost")
list.files("C:/Data Science Fundation with R/The Data Incubator_Datasets/1. US solar energy cost-effiency/1. US solar installation and cost")

#loading libraries
library(dplyr) #data wrangling
library(zipcode)
library(magrittr) # %>% pipe operators
library(XML) # website data scraping 
library(rvest)# website data scraping 
library(RColorBrewer)
library(stats)
library(ggplot2)
library(ggthemes) # visualization
library(maps)
library(leaflet)


#read and join the downloaded zipcode-based data.Dataset downloaded from The Open Pv Project (https://openpv.nrel.gov)
d1 <- read.csv('openpv-export-201607151909 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d2 <- read.csv('openpv-export-201607151909 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d3 <- read.csv('openpv-export-201607151909.csv',header=TRUE, fill=TRUE,row.names=NULL)
d4 <- read.csv('openpv-export-201607151910 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d5 <- read.csv('openpv-export-201607151910.csv',header=TRUE, fill=TRUE,row.names=NULL)
d6 <- read.csv('openpv-export-201607151911 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d7 <- read.csv('openpv-export-201607151911.csv',header=TRUE, fill=TRUE,row.names=NULL)
d8 <- read.csv('openpv-export-201607151912 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d9 <- read.csv('openpv-export-201607151912 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d10 <- read.csv('openpv-export-201607151912 (3).csv',header=TRUE, fill=TRUE,row.names=NULL)
d11 <- read.csv('openpv-export-201607151912 (4).csv',header=TRUE, fill=TRUE,row.names=NULL)
d12 <- read.csv('openpv-export-201607151912.csv',header=TRUE, fill=TRUE,row.names=NULL)
d13 <- read.csv('openpv-export-201607151913 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d14 <- read.csv('openpv-export-201607151913 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d15 <- read.csv('openpv-export-201607151913 (3).csv',header=TRUE, fill=TRUE,row.names=NULL)
d16 <- read.csv('openpv-export-201607151913.csv',header=TRUE, fill=TRUE,row.names=NULL)
d17 <- read.csv('openpv-export-201607151914 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d18 <- read.csv('openpv-export-201607151914 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d19 <- read.csv('openpv-export-201607151914.csv',header=TRUE, fill=TRUE,row.names=NULL)
d20 <- read.csv('openpv-export-201607151915 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d21 <- read.csv('openpv-export-201607151915 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d22 <- read.csv('openpv-export-201607151915.csv',header=TRUE, fill=TRUE,row.names=NULL)
d23 <- read.csv('openpv-export-201607151916 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d24 <- read.csv('openpv-export-201607151916 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d25 <- read.csv('openpv-export-201607151916.csv',header=TRUE, fill=TRUE,row.names=NULL)
d26 <- read.csv('openpv-export-201607151916.csv',header=TRUE, fill=TRUE,row.names=NULL)
d27 <- read.csv('openpv-export-201607151917 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d28 <- read.csv('openpv-export-201607151917 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d29 <- read.csv('openpv-export-201607151917 (3).csv',header=TRUE, fill=TRUE,row.names=NULL)
d30 <- read.csv('openpv-export-201607151917.csv',header=TRUE, fill=TRUE,row.names=NULL)
d31 <- read.csv('openpv-export-201607151918 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d32 <- read.csv('openpv-export-201607151918 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d33 <- read.csv('openpv-export-201607151918 (3).csv',header=TRUE, fill=TRUE,row.names=NULL)
d34 <- read.csv('openpv-export-201607151918.csv',header=TRUE, fill=TRUE,row.names=NULL)
d35 <- read.csv('openpv-export-201607151919 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d36 <- read.csv('openpv-export-201607151919 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d37 <- read.csv('openpv-export-201607151919 (3).csv',header=TRUE, fill=TRUE,row.names=NULL)
d38 <- read.csv('openpv-export-201607151919 (4).csv',header=TRUE, fill=TRUE,row.names=NULL)
d39 <- read.csv('openpv-export-201607151919.csv',header=TRUE, fill=TRUE,row.names=NULL)
d40 <- read.csv('openpv-export-201607151920 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d41 <- read.csv('openpv-export-201607151920 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d42 <- read.csv('openpv-export-201607151920 (3).csv',header=TRUE, fill=TRUE,row.names=NULL)
d43 <- read.csv('openpv-export-201607151920.csv',header=TRUE, fill=TRUE,row.names=NULL)
d44 <- read.csv('openpv-export-201607151921 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d45 <- read.csv('openpv-export-201607151921 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d46 <- read.csv('openpv-export-201607151921 (3).csv',header=TRUE, fill=TRUE,row.names=NULL)
d47 <- read.csv('openpv-export-201607151921 (4).csv',header=TRUE, fill=TRUE,row.names=NULL)
d48 <- read.csv('openpv-export-201607151921 (5).csv',header=TRUE, fill=TRUE,row.names=NULL)
d49 <- read.csv('openpv-export-201607151921.csv',header=TRUE, fill=TRUE,row.names=NULL)
d50 <- read.csv('openpv-export-201607151922 (1).csv',header=TRUE, fill=TRUE,row.names=NULL)
d51 <- read.csv('openpv-export-201607151922 (2).csv',header=TRUE, fill=TRUE,row.names=NULL)
d52 <- read.csv('openpv-export-201607151922.csv',header=TRUE, fill=TRUE,row.names=NULL)

d_Solar <- do.call('rbind',list(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,d41,d42,d43,d44,d45,d46,d47,d48,d49,d50,d51,d52))
d_Solar$Zipcode <- ifelse(d_Solar$Zipcode==0, paste0('0000',d_Solar$Zipcode),
                                                     ifelse(d_Solar$Zipcod < 1000, paste0('00',d_Solar$Zipcod),
                                                            ifelse(d_Solar$Zipcod < 10000, paste0('0',d_Solar$Zipcod),d_Solar$Zipcod)))

d_Solar$Date.Installed <-as.Date(d_Solar$Date.Installed, "%m/%d/%Y")
d_Solar$YaInstall <- as.numeric(format(d_Solar$Date.Installed, format = "%Y"))

#American household Income downloaded from http://www.psc.isr.umich.edu/dis/census/Features/tract2zip
d_IncZip <- read.csv('American Hosehold Income by Zipcode.csv',header=TRUE, fill=TRUE,row.names=NULL)
names(d_IncZip)[1] <- 'Zipcode'
d_IncZip$Zipcode <- ifelse(d_IncZip$Zipcode < 10000, paste0('0', d_IncZip$Zipcode), d_IncZip$Zipcode)

#Potential solar to eletricity (kWh/m2/day), data from National Renewable Engery Lab:http://www.nrel.gov/gis/data_solar.html
d_PoSolar <- read.csv('SolarSummaries.csv',header=TRUE, fill=TRUE,row.names=NULL) [1:4]
names(d_PoSolar)[1] <- 'Zipcode'
d_PoSolar$Zipcode <- ifelse(d_PoSolar$Zipcode < 10000, paste0('0', d_PoSolar$Zipcode), d_PoSolar$Zipcode)

#Cost of PV in each states, data from The Open Pv Project (https://openpv.nrel.gov)
d_SolarCost <- read.csv('SolarCost.csv',header=TRUE, fill=TRUE,row.names=NULL)

# data scrape from website.
test <- read_html("http://shiny.rstudio.com/gallery/superzip-example.html")
d_SuperZip <- test %>% 
  html_node("zipcode", "states", "superzip", "education", "income") %>%
  html_text() %>%
  as.numeric()
#data cleaning from the website and reloaded as a file.
d_SuperZip <- read.csv('Super Zipcodes.csv',header=TRUE, fill=TRUE,row.names=NULL)
d_SuperZip$Zipcode <- ifelse(d_SuperZip$Zipcode < 10000, paste0('0', d_SuperZip$Zipcode), d_SuperZip$Zipcode)

#electricity rate
d_elerate <- read.csv('ElectricityRate_2014.csv',header=TRUE, fill=TRUE,row.names=NULL)
names(d_elerate)[1] <- 'Zipcode'
d_elerate $Zipcode <- ifelse(d_elerate $Zipcode < 10000, paste0('0', d_elerate $Zipcode), d_elerate $Zipcode)

#solar installation facts 
d_Solar %>%
  group_by(as.numeric(YaInstall)) %>%
  summarise(YaInstall=n()) -> g_SInstallation 

g_SInstallation <- g_SInstallation[10:30,] 
names(g_SInstallation)[1] <- 'Year'
names(g_SInstallation)[2] <- "Installation.No"

#figure of solar installation from 1995 to 2014
ggplot(g_SInstallation, aes(Year,Installation.No)) +
  geom_area(color='white', fill='red',position = "stack", alpha=.5)

#solar panel installation cost for each state in USA
m.usa <- map_data("state")
map_id <- d_SolarCost$STATE_NAME

ggplot(d_SolarCost, aes(map_id = STATE_NAME)) +
  geom_map(aes(fill=Cost_Watt), map = m.usa)+ 
  expand_limits(x=m.usa$long, y=m.usa$lat)+
    coord_map()

#merge all the dataset to a final dataframe for regression
MergeAll <- function(x,y) {
  merge(x,y, by = "Zipcode")
}

data("zipcode")

names(zipcode)[1] <-'Zipcode'

d_SuperZip <- MergeAll(d_SuperZip, d_IncZip)
d_all <- MergeAll(zipcode,d_Solar)
t1 <- MergeAll(d_PoSolar,d_SuperZip)
names(d_SolarCost)[4] <- 'state'
t2 <- merge(d_elerate,d_SolarCost, by = "state")
t3 <- MergeAll(t1,t2)
d_all <- MergeAll(d_all, t3)
 
d_row <- d_all %>%
  select(Zipcode, city, latitude, longitude,Population, State, Size..kW.DC., YaInstall, Annual.Average..kWh.m2.day., Rank, Score, Superzip, College, Median, res_rate, Cost_Watt, Capacity_MW)



#The profile differences between people who installed solar panels to the national leval
#the hypothesis is that people who installed solar panels have higher income, higher electrecity rate, and located in higher solar energy area.
Income_Dif <- median(d_row$Median) - median(d_IncZip$Median)
Income_Dif #25301.5
EleRat_Dif <- median(d_row$res_rate) - median(d_elerate$res_rate)
EleRat_Dif #0.04336988
SolarPo_Dif <- median(d_row$Annual.Average..kWh.m2.day.,na.rm = T) - median(d_PoSolar$Annual.Average..kWh.m2.day.,na.rm = T)
SolarPo_Dif #1.42

write.table(d_row, file = "d_row.txt", sep = ',', row.names = F)  

#create interactive map
leaflet(data = d_row$Annual.Average..kWh.m2.day.) %>% addTiles() %>% addMarkers(lng = d_row$longitude, lat = d_row$latitude, clusterOptions = markerOptions())

#Installation rate per 10000 people by each zipcode
d_row$Pop10000 <- d_row$Population/10000 
InRP <- aggregate(Pop10000~Zipcode, d_row, mean) #calculate population mean by each repeated zipcode.
InZip <- as.data.frame(table(d_row$Zipcode))
InRP$InstallationR <- InZip$Freq/InRP$Pop10000
InRP <- MergeAll(InRP,zipcode) %>%
  mutate(InZip$Freq)

#interactive map 
leaflet(InRP) %>% addProviderTiles("CartoDB.Positron") %>%
  addCircles(lng =InRP$longitude.x, lat =InRP$latitude.x, weight = 1,
             radius =InRP$InstallationR * 10, popup =InRP$city.x
  )
