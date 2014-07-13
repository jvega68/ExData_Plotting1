#Juy 13, 2014
#Jorge de la Vega
#Project 1:Exploratory Data Analysis. File 3/4
Sys.setlocale("LC_TIME", "C")

#Read data into memory and subset for the specified days
data <- read.table("../household_power_consumption.txt", sep=";", header = T, na.strings = "?")
data <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

#work with date and time to generate the x-axis scale
date <- as.Date(data$Date, format = "%m/%d/%Y")
datetime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

#Generate second third and close the device
png(filename = "plot3.png", width = 480, height = 480, units = "px")
  plot(datetime, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
  lines(datetime, data$Sub_metering_2, type = "l", col = "red")
  lines(datetime, data$Sub_metering_3, type = "l", col = "blue")
  legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty = rep(1,3), col = c("black","red","blue"))
dev.off()