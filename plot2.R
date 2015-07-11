# Run "InputData.R" file before this file

# Please note that since the system language is French, therefore
# the days of the week shown in the x-axis are "Jeu", "Ven" and "Sam" for "Thu", "Fri" and "Sat"

# Do Plot 2

png("plot2.png",bg="transparent")
plot(DataExtd$datetime,DataExtd$Global_active_power,type="l",xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
