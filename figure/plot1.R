########################################################################
## Title: 	plot1.R                                               ##
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

all_data <- read.table("data/extracted_data.txt", header = TRUE, sep = "\t", nrows = 2880, colClasses=c("factor","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

png("plot1.png", width = 480, height = 480, units = "px");
hist(all_data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
#par(mfcol = c(2,2));

############################################# 
##      End of the script - cleanup        ##
############################################# 
rm(list=ls())

########################################################################