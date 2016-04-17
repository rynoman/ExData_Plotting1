# This R code file will be sourced by various plot code files
# This code will download and load the required dataset used for plotting

# Setup working directory
path <- "~/datasciencecoursera/ExData_Plotting1"
setwd(path)

library(stringr)  # for string manipulation

# Check for file, do not download if file exists (downloaded earlier)
# Download required dataset from repository provided in Assignment notes
if (!file.exists("household_power_consumption.txt")) {

        
        url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(url, destfile="exdata_data_household_power_consumption.zip", method = "curl")
        unzip("exdata_data_household_power_consumption.zip")
} 

# Read the dataset in R Environment
completeData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

# Convert the Date and Time variables to Date/Time classes in R 
completeData$Day = as.Date(completeData$Date, format="%d/%m/%Y")
subsetData <- subset(completeData, Day == "2007-2-1" | Day =="2007-2-2") # Only keep observations for 2 dates; 1st & 2nd Feb 2007
subsetData$DayTime = strptime(paste(subsetData$Date, subsetData$Time), "%d/%m/%Y %H:%M:%S")

# Remove the orignal dataset from environment to clear memory 
rm(completeData)


