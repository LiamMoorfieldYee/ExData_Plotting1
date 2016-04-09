##Plot 1

library(dplyr)

##Read in the data
powerData <- read.table("./household_power_consumption.txt", header = TRUE,
                        sep = ";", stringsAsFactors=FALSE, dec = ".", na.strings = "?")
##Subsetting Data and creating globalactivepower vector
subSetData <- powerData[powerData$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower = as.numeric(subSetData$Global_active_power)

##Creating plot and outputting it to working directory
png("plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)")
dev.off()





