## Scott Loseke
## explore power data from Coursera Exploratory data analysis, Project 1
## plot1.R creates plot1.png

cat("\014")                    ## Clear the Console
rm(list=ls())                  ## Clear the data Environment
setwd("C:/rProjects/ExData_Plotting1")

x <- read.table("household_power_consumption.txt", sep = ";", nrows = 2880, skip = 66637)
                
names(x) = c("Date", "Time", "GAP", "GRP", "Volt", "GI", "sub1", "sub2", "sub3")

#head(x)
#tail(x)

## Plot1

## display to windows

hist(x$GAP, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

png("plot1.png", width = 480, height = 480)

hist(x$GAP, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()