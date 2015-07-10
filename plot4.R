#The following line is not necessary if "InputData.R" is already sourced elsewhere
#source("InputData.R")


# Plot 4
png("plot4.png",bg = "transparent")
par(mfrow=c(2,2))
plot(DataExtd$datetime,DataExtd$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(DataExtd$datetime,DataExtd$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(DataExtd$datetime,DataExtd$Sub_metering_1,type="n",xlab = "",ylab = "Energy sub metering")
vct_colors=c("black","red","blue")
for(i in 7:9) {
  lines(DataExtd$datetime,DataExtd[,i],col=vct_colors[i-6])
}
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty= c(1,1,1), col = vct_colors,bty = "n")
plot(DataExtd$datetime,DataExtd$Global_reactive_power,type="l",xlab="datetime",ylab="Global_Reactive_Power")
dev.off()