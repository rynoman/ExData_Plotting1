# Load the required data by calling R code stored in below file
source("Loading_the_Data.R")

# Setup Graphic device for png
png(filename = "plot1.png", width = 480, height = 480, units = "px")
par(mfrow = c(1,1))

# Call hist function to compute histogram on Global Active Power
hist(as.numeric(subsetData$Global_active_power), main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

# Shuts down the current device for png and saves plot1.png file
dev.off()