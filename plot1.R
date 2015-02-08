powerData<-read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
#subset powerData for desired dates
newdata<-subset(powerData, Date=="1/2/2007"|Date=="2/2/2007")
#convert Date and Time variables 
newdata$dateTime  <- as.POSIXlt(paste(as.Date(newdata$Date,format="%d/%m/%Y"), newdata$Time, sep=" "))
#create plot1
hist(newdata$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
#save as png
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()