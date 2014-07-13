#Juy 13, 2014
#Jorge de la Vega
#Project 1:Exploratory Data Analysis. File 1/4

#Read data into memory and subset for the specified days
data <- read.table("../household_power_consumption.txt", sep=";", header = T, as.is = T, na.strings = "?")
data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

#Generate first graph and close device
png(filename = "plot1.png", width = 480, height = 480, units = "px")
  with(data, hist(Global_active_power, breaks = 16, col = "red",
                  xlim = c(0,6), ylim = c(0,1200), main = "Global Active Power",
                  xlab = "Global active power (kilowatts)"))
dev.off()