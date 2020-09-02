##Plot4:
par(mfrow=c(2,2))
hpc1$datetime<-as.POSIXct(paste(hpc1$Date,hpc1$Time), format="%Y-%m-%d %H:%M:%S")
attach(hpc1)
png(filename="plot4.png")
  ##sub1
plot(datetime,Global_active_power,
     xlab = "",
     type="l",
     ylab = "Global Active Power (kilowatts)")
  ##sub2
plot(datetime,Voltage,
     xlab = "datetime",
     type="l",
     ylab = "Voltage")
  ##sub3
plot(datetime,Sub_metering_1,type="l",ylab = "Energy sub metering",col="black",xlab = "")
lines(datetime,Sub_metering_2,col="red")
lines(datetime,Sub_metering_3,col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lty=1)
  ##sub4
plot(datetime,Global_reactive_power,
     xlab = "datetime",
     type="l")
dev.off()