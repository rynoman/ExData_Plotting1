# Load the required data by calling R code stored in below file
source("Loading_the_Data.R")

# Setup Graphic device for png
png("plot2.png", width = 480, height = 480, units = "px")
par(mfrow = c(1,1))

# Call plot function to compute plot on Global Active Power
plot(subsetData$DayTime, subsetData$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")

# Shuts down the current device for png and saves plot2.png file
dev.off()