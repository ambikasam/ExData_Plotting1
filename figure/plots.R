########################################################################
## Title: 	plots.R                                               ##
## Author: 	Ambika J                                              ##
## Date: 	Jul-2014                                              ##
## Notes: 	Explorartory Analysis                                 ##
########################################################################

#setwd("~/Desktop/OTHERSonDESKTOP/CourseraCourses/DataAnalysis-courseraCourse/04-ExploratoryDataAnalysis/04-Project")
#setwd("~/gitDir/ExData_Plotting1/figure")

#############################################
## 	File and Folder section		   ##
#############################################
## Folder: check/create
if (!file.exists("data")) {
    dir.create("data")
}

setwd("data")
## File: check/download and unzip 
if (!file.exists("household_power_consumption.txt")) {		
	if (!file.exists("household_power_consumption.zip")) {
		fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
		download.file(fileUrl, destfile = "household_power_consumption.zip", method = "curl")
	}
	unzip("household_power_consumption.zip")
}

#############################################
## 		Functions block		   ##
#############################################

##=========================================##
## load_package/s:
## get the list of packages.
## parameter: packages
##
## For each package:
## 	checks if package exists
## 	if it doesnt, then, installs that package.
## 	parameter: package_name
##=========================================##
load_packages <- function(pkgs) {
	for (i in 1:length(pkgs)) load_package(pkgs[i])
}

load_package <- function(pkg) {
	message(c("checking package ",pkg))
	if (!isPackageInstalled(pkg)) install.packages(pkg,repos = "http://cran.us.r-project.org")
	message(c("load package "),pkg)
	library(pkg, character.only = TRUE)
}

#############################################
## 		   MAIN	       	           ##
#############################################

##=========================================##
## 0. Packages
##=========================================##
if (!is.element("R.utils", installed.packages())) install.packages("R.utils",repos = "http://cran.us.r-project.org") 
library("R.utils")

load_packages(c("sqldf"))

##=========================================## 
## 1. Read file and 
##    Extract only 2007 Feb 01 and 02
##=========================================##
#all_data <- read.table("household_power_consumption.txt", comment.char = "", nrows=2075259, header = TRUE, sep = ";", quote = "", stringsAsFactors=FALSE, colClasses=c("factor","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")

all_data <- read.csv.sql("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, sql = "select * from file where Date in ('1/2/2007','2/2/2007') ")

## Write it to a text file.
write.table(all_data,file="extracted_data.txt",row.names=FALSE, col.names=TRUE, sep="\t", quote=FALSE)

############################################# 
##      End of the script - cleanup        ##
############################################# 
rm(list=ls())

########################################################################