## Scott Loseke
## explore power data from Coursera Exploratory data analysis, Project 1
## plot3.R creates plot3.png

cat("\014")                    ## Clear the Console
rm(list=ls())                  ## Clear the data Environment
setwd("C:/rProjects/ExData_Plotting1")
Sys.timezone()

x <- read.table("household_power_consumption.txt", sep = ";", nrows = 2880, skip = 66637)
                
names(x) = c("Date", "Time", "GAP", "GRP", "Volt", "GI", "sub1", "sub2", "sub3")

head(x)
#tail(x)
y <- paste(x$Date, x$Time)
head(y)
x$DateTime <- as.POSIXlt(paste(x$Date, x$Time), "%d/%m/%Y %H:%M:%S", tz = "America/Chicago")
head(x$DateTime)

#x$Date <- as.Date(x$Date, "%d/%m/%Y")
#str(x$Date)
#x$Weekday <- weekdays(x$Date, abbreviate = TRUE)
#str(x$Weekday)

## Plot3

## display to windows

plot(x$DateTime, x$sub1, pch = "", lty = "solid", col = "black", ylab = "Energy sub metering", xlab = "")
lines(x$DateTime, x$sub1)
lines(x$DateTime, x$sub2, col = "red")
lines(x$DateTime, x$sub3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = "solid")


png("plot3.png", width = 480, height = 480)

plot(x$DateTime, x$sub1, pch = "", lty = "solid", col = "black", ylab = "Energy sub metering", xlab = "")
lines(x$DateTime, x$sub1)
lines(x$DateTime, x$sub2, col = "red")
lines(x$DateTime, x$sub3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = "solid")



dev.off()
