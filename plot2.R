#The following line is not necessary if "InputData.R" is already sourced
#source("InputData.R")


png("plot2.png",bg="transparent")
plot(DataExtd$datetime,DataExtd$Global_active_power,type="l",xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
