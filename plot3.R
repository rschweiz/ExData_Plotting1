#load data
source("loadData.R")

#plot3
png("plot3.png",width=480,height=480)
with(power, plot( Time, Sub_metering_1, 
                  ylab="Enery sub metering", type="n")  )
with(power, lines( Time, Sub_metering_1,col="black") )
with(power, lines( Time, Sub_metering_2,col="red") )
with(power, lines( Time, Sub_metering_3,col="blue") )
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lty=rep(1,3) )
dev.off()