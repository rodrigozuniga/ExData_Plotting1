setwd("C:/Users/rodri/Dropbox/Education/R/RClass4/FirstProject/FirstProject")
##Read dataset and subset for 2007/02/01 and 2007/02/02
hpc <- read.csv("household_power_consumption.txt", sep=";")
hpc$Date<-as.Date(hpc$Date,"%d/%m/%Y")
hpc1<-hpc[hpc$Date %in% c(date("2007/02/01"),date("2007/02/02")),]

##Plot1:
png(filename="plot1.png")
hist(as.numeric(hpc1$Global_active_power),
     main="Global Active Power",
     c="red",
     xlab = "Global Active Power (kilowatts)")
dev.off()