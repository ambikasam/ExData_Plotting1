########################################################################
## Title: 	plot2.R                                               ##
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
all_data <- read.table("data/extracted_data.txt", header = TRUE, sep = "\t", nrows = 2880, colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

##=========================================## 
## 2. Plot 2 creation
## Plot for date & time and Global Active Power
##=========================================##
png("plot2.png", width = 480, height = 480, units = "px");
date.time <- strptime(paste(all_data$Date, all_data$Time), "%d/%m/%Y %H:%M:%S")
plot(date.time, all_data$Global_active_power, xlab = "", ylab= "Global Active Power (kilowatts)", type= "S")
dev.off()

############################################# 
##      End of the script - cleanup        ##
############################################# 
rm(list=ls())

########################################################################