#Plot 3
with(newdata, {
	plot(dateTime, Sub_metering_1, type="l", xlab="", 
	ylab="Energy sub metering")
	lines(dateTime, Sub_metering_2, col='Red')
	lines(dateTime, Sub_metering_3, col='Blue')
	})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#Save Plot 3 as png
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off