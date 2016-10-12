require(data.table)
require(lubridate)

#download the data, if not already done
zipfile <- "exdata_data_household_power_consumption.zip"
if (!file.exists(zipfile)) {
    url1 <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(url1,zipfile,method ="libcurl")
}

#read the file, if not done already
if ( !any("power" == ls() ) ) {
    n=2075259
    power <- read.table(unz(zipfile,"household_power_consumption.txt"),
                        sep=";", header = TRUE, na.strings = "?", nrows=n,
                        stringsAsFactors = FALSE,
                        colClasses = c("character","character",rep("numeric",7)) )
    
    #power <- fread(input=paste("unzip -c ",zipfile), stringsAsFactors = FALSE,
    #                sep=";",na.strings = "?")
    
    #only retain data from 2007-02-01 and 2007-02-02
    power$Time <- dmy_hms(paste(power$Date,power$Time))
    t1<-ymd("2007-02-01")
    t2<-ymd("2007-02-03")
    
    power <- subset(power, Time >= t1 & Time <t2)
    
}