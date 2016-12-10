source('C:/Users/asarapure/Desktop/My_Projects/wahoo_tickr_visualizer/settings.R')

setwd('C:/Users/asarapure/Desktop/My_Projects/wahoo_tickr_visualizer/')
file = read.csv("20161210_104349_2.Heart.csv")
options(scipen =999) #To read large numbers without the scientific notation


#date time from unixtimestamp
file$datetime = as.POSIXct(as.numeric(substr(as.character(file$Timestamp), 1, 10)), origin="1970-01-01")


#creating a moving average 

#at any point showing time and heartrate. in d3. 

p = ggplot(file, aes(datetime, Heartrate)) + geom_line(color = 'steelblue', size= 0.3) + xlab("Time") + ylab("Heart Rate")

           
           
ggplotly(p)
