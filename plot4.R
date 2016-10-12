#load data
source("loadData.R")

#plot4
png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))

#4a
with(power, plot( Time, Global_active_power,
                  ylab="Global Active Power", type="n")  )
with(power, lines( Time, Global_active_power)  )

#4b
with(power, plot( Time, Voltage,
                  ylab="Voltage", type="n", xlab="datetime")  )
with(power, lines( Time, Voltage)  )

#4c
with(power, plot( Time, Sub_metering_1, 
                  ylab="Enery sub metering", type="n")  )
with(power, lines( Time, Sub_metering_1,col="black") )
with(power, lines( Time, Sub_metering_2,col="red") )
with(power, lines( Time, Sub_metering_3,col="blue") )
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"), bty="n")

#4d
with(power, plot( Time, Global_reactive_power, type="n", xlab="datetime")  )
with(power, lines( Time, Global_reactive_power)  )
dev.off()