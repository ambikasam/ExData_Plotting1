## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data





When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).

* We will only be using data from the dates 2007-02-01 and
2007-02-02. One alternative is to read the data from just those dates
rather than reading in the entire dataset and subsetting to those
dates.

* You may find it useful to convert the Date and Time variables to
Date/Time classes in R using the `strptime()` and `as.Date()`
functions.

* Note that in this dataset missing values are coded as `?`.


## Making Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. Your task is to
reconstruct the following plots below, all of which were constructed
using the base plotting system.

First you will need to fork and clone the following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)


For each plot you should

* Construct the plot and save it to a PNG file with a width of 480
pixels and a height of 480 pixels.

* Name each of the plot files as `plot1.png`, `plot2.png`, etc.

* Create a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. Your code file **should include code for reading
the data** so that the plot can be fully reproduced. You should also
include the code that creates the PNG file.

* Add the PNG file and R code file to your git repository

When you are finished with the assignment, push your git repository to
GitHub so that the GitHub version of your repository is up to
date. There should be four PNG files and four R code files.


The four plots that you will need to construct are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

Script
=========== 

#### The flow of the script
```R
There are 5 R script files and 4 png files.  
1. plots.R: Main script file. This downloads and unzips the input data, then, extracts the data.  
2. plot1.R: Generates plot1.png [as the figure above  for Plot 1] using the extracted data.  
If extracted data does not exist, then, it would source plots.R and do the needful.  
Same is applicable for the other 3 R scripts.  
3. plot2.R: Generates plot2.png [as the figure above  for Plot 2] using the extracted data.  
4. plot3.R: Generates plot3.png [as the figure above  for Plot 3] using the extracted data.  
5. plot4.R: Generates plot4.png [as the figure above  for Plot 4] using the extracted data.  
```
  
### Packages
```R
Only package required is sqldf. This package is used in plots.R script.  
To install and use `sqldf` package; please follow this 
link http://cran.r-project.org/web/packages/sqldf/INSTALL  
```
  
#### Functions/Blocks in Script  
```R
Functions [in plots.R]: load_package/s: 
   To check if there are packages installed; if not installed, then, install it and load it.  
```

#### Execution of the script  
1. Before executing any one of these, ensure you have set the correct directory path. Path is where this code is checked out and run any of the 4 R scripts to generate the related png file.   
2. Execution  
   a. To execute this script in R console or R studio `source("plot1.R")`  OR `source("plot2.R")` OR `source("plot3.R")` OR `source("plot4.R")`
   b. To execute on the command line `R CMD BATCH plot1.R` OR `R CMD BATCH plot2.R`  OR `R CMD BATCH plot3.R`  OR `R CMD BATCH plot4.R` and to check the execution process `vi plot1.Rout`, similarly for the other R scripts.  
3. After the execution of the plot 1 to 4 R scripts, it would generate respective 'png' files in the same location.  
  
#### Environment details
Environment in which script has been developed, executed and verified.

* Mac: OS X 10.9.2
* R: version 3.0.2
* Platform: x86_64-apple-darwin10.8.0 (64-bit)

#### Verification
* Scripts: plots.R, plot1.R, plot2.R, plot3.R, plot4.R
* These scripts have been executed under different location (folders) to ensure it provides the same results [png files].
* Also, executed every single line of command/block of command separately on R console and even this produced the same results. 
* Each of these scripts has been run with and without data folder and zip [household_power_consumption.zip] file; the average time take without "data" folder and zip file is "30" secs and with it takes less than 1 sec. This timing does not include without packages installed.  

