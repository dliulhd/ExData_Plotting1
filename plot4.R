# Run "InputData.R" file before this file

# Please note that the author's computer uses French
# The days of the week in the x-axis are "Jeu", "Ven" and "Sam" for "Thu", "Fri" and "Sat"

# Do Plot 4
 
png("plot4.png",bg = "transparent")

par(mfrow=c(2,2)) # There'll be 4 plots arranged in a 2x2 matrix

# The first plot at (1,1) position
plot(DataExtd$datetime,DataExtd$Global_active_power,type="l",xlab="",ylab="Global Active Power")

# The second plot at (1,2) position
plot(DataExtd$datetime,DataExtd$Voltage,type="l",xlab="datetime",ylab="Voltage")

# The third plot at (2,1) position
plot(DataExtd$datetime,DataExtd$Sub_metering_1,type="n",xlab = "",ylab = "Energy sub metering")

vct_colors=c("black","red","blue")
for(i in 7:9) {
  lines(DataExtd$datetime,DataExtd[,i],col=vct_colors[i-6])
}
#add legend
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty= c(1,1,1), col = vct_colors,bty = "n")

# The fourth plot at (2,2) position
plot(DataExtd$datetime,DataExtd$Global_reactive_power,type="l",xlab="datetime",ylab="Global_Reactive_Power")


dev.off()