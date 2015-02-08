par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(newdata, {
	plot(dateTime, Global_active_power, type="l", xlab="", 
	ylab="Global Active Power")
	plot(dateTime, Voltage, type="l", xlab="datetime", ylab="Voltage")
	plot(dateTime, Sub_metering_1, type="l", xlab="", 
	ylab="Energy sub metering")
	lines(dateTime, Sub_metering_2, col='Red')
	lines(dateTime, Sub_metering_3, col='Blue')
	legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 			bty='n', legend=c("Sub_metering_1", "Sub_metering_2", 		"Sub_metering_3"))
	plot(dateTime, Global_reactive_power, type="l", xlab="datetime", 		ylab="Global_reactive_power")
})
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()