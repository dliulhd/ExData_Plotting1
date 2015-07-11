# Run "InputData.R" file before this file
 
# Please note that the author's computer uses French
# The days of the week in the x-axis are "Jeu", "Ven" and "Sam" for "Thu", "Fri" and "Sat"

# Do Plot 1 and export it into png file
DataExtd$Global_active_power <- as.numeric(as.character(DataExtd$Global_active_power))

png("plot1.png",bg = "transparent")
hist(DataExtd$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)", main="Global Active Power")
dev.off()

