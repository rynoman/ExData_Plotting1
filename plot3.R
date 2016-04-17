# Load the required data by calling R code stored in below file
source("Loading_the_Data.R")

# Setup Graphic device for png
png("plot3.png", width = 480, height = 480, units = "px")
par(mfrow = c(1,1))

# Call plot function to compute plot on Sub metering
plot(subsetData$DayTime, subsetData$Sub_metering_1, type="n", xlab="", ylab = "Energy sub metering")

points(subsetData$DayTime, subsetData$Sub_metering_1, type="l", col = "black")
points(subsetData$DayTime, subsetData$Sub_metering_2, type="l", col = "red")
points(subsetData$DayTime, subsetData$Sub_metering_3, type="l", col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1), col = c("black", "red", "blue"))

# Shuts down the current device for png and saves plot3.png file
dev.off()