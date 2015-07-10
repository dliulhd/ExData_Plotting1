source("InputData.R")



# Do Plot 1 and export it into png file
DataExtd$Global_active_power <- as.numeric(as.character(DataExtd$Global_active_power))

png("plot1.png",bg = "transparent")
hist(DataExtd$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)", main="Global Active Power")
dev.off()

