#Juy 13, 2014
#Jorge de la Vega
#Project 1:Exploratory Data Analysis. File 2/4
Sys.setlocale("LC_TIME", "C")

#Read data into memory and subset for the specified days
data <- read.table("../household_power_consumption.txt", sep=";", header = T, na.strings = "?")
data <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

#work with date and time to generate the x-axis scale
date <- as.Date(data$Date, format = "%m/%d/%Y")
datetime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

#Generate second graphic and close the device
png(filename="plot2.png",width=480,height=480,units="px")
  plot(datetime,data$Global_active_power, type="l", xlab="")
dev.off()