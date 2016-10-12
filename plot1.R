#load data
source("loadData.R")

#plot1
png("plot1.png",width=480,height=480)
with(power, hist(Global_active_power,
                 xlab="Global Active Power (kilowatts)",
                 main="Global Active Power",
                 col="red") )
dev.off()
