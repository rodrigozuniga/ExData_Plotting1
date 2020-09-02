##Plot2:
png(filename="plot2.png")
hpc1$datetime<-as.POSIXct(paste(hpc1$Date,hpc1$Time), format="%Y-%m-%d %H:%M:%S")
with(hpc1,
     plot(datetime,Global_active_power,
          xlab = "",
          type="l",
          ylab = "Global Active Power (kilowatts)"))
dev.off()
