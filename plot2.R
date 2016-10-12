#load data
source("loadData.R")

#plot2
png("plot2.png",width=480,height=480)
with(power, plot( Time, Global_active_power,
                  ylab="Global Active Power (kilowatts)", type="n")  )
with(power, lines( Time, Global_active_power)  )
dev.off()