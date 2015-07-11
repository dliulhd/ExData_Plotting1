# Run "InputData.R" file before this file

# Please note that since the system language is French, therefore
# the days of the week shown in the x-axis are "Jeu", "Ven" and "Sam" for "Thu", "Fri" and "Sat"

# Do Plot 3
 
png("plot3.png",bg = "transparent")
plot(DataExtd$datetime,DataExtd$Sub_metering_1,type="n",xlab = "",ylab = "Energy sub metering")

vct_colors=c("black","red","blue")
for(i in 7:9) {
  lines(DataExtd$datetime,DataExtd[,i],col=vct_colors[i-6])
}
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty= c(1,1,1), col = vct_colors)
dev.off()
