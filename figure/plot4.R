########################################################################
## Title: 	plot4.R                                               ##
## Author: 	Ambika J                                              ##
## Date: 	Jul-2014                                              ##
## Notes: 	Explorartory Analysis                                 ##
########################################################################

#setwd("~/Desktop/OTHERSonDESKTOP/CourseraCourses/DataAnalysis-courseraCourse/04-ExploratoryDataAnalysis/04-Project")
#setwd("~/gitDir/ExData_Plotting1/figure")

#############################################
## 	File and Folder section		   ##
#############################################
## File: check extracted data
if (!file.exists("data/extracted_data.txt")) {		
	source("plots.R")
	setwd("..")
}

#############################################
## 		   MAIN	       	           ##
#############################################

##=========================================## 
## 1. Read the extracted file
##=========================================##
#all_data <- read.table("household_power_consumption.txt", comment.char = "", nrows=2075259, header = TRUE, sep = ";", quote = "", stringsAsFactors=FALSE, colClasses=c("factor","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")

all_data <- read.table("data/extracted_data.txt", header = TRUE, sep = "\t", nrows = 2880, colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

datetime <- strptime(paste(all_data$Date, all_data$Time), "%d/%m/%Y %H:%M:%S")

png("plot4.png", width = 480, height = 480, units = "px")
par(mfcol = c(2,2))

## plot 1
plot(datetime, all_data$Global_active_power, xlab = "", ylab= "Global Active Power", type= "S")

## plot 2
plot(datetime, all_data$Sub_metering_1, xlab = "", ylab= "Energy sub metering", type= "S")
lines(datetime, all_data$Sub_metering_2, type= "S", col = 2)
lines(datetime, all_data$Sub_metering_3, type= "S", col = 4)
legend("topright", legend = colnames(all_data)[grepl("Sub_metering",colnames(all_data))], col = c(1,2,4), lty=c(1,1,1), bty = "n")

## plot 3
plot(datetime, all_data$Voltage, ylab = colnames(all_data)[grep("Voltage",colnames(all_data))], type= "S")

## plot 4
plot(datetime, all_data$Global_reactive_power, ylab = colnames(all_data)[grep("Global_reactive_power",colnames(all_data))], type= "S")

## close device
dev.off()

############################################# 
##      End of the script - cleanup        ##
############################################# 
rm(list=ls())

########################################################################