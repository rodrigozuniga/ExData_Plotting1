##Plot3:
png(filename="plot3.png")
attach(hpc1)
plot(datetime,Sub_metering_1,type="l",ylab = "Energy sub metering",col="black",xlab = "")
lines(datetime,Sub_metering_2,col="red")
lines(datetime,Sub_metering_3,col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lty=1)
dev.off()
