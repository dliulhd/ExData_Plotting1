# Download the data file
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,"dt_proj1.zip",method = "curl")


# Unzip
unzip("dt_proj1.zip") 

# Read the unzipped file
# The part unzip("dt_proj1.zip",list=TRUE)[1,1] is to obtain the file name
dataProj1 <- read.table(unzip("dt_proj1.zip",list=TRUE)[1,1],sep=";", header = TRUE)

# Convert the class of the column "Date" into Date
DateInDate <- as.Date(dataProj1$Date,format = "%d/%m/%Y")

# Pick out the rows observed on Feb 1 and Feb 2, and keep only the subset
dataProj1 <- dataProj1[DateInDate <= "2007-02-02" & DateInDate >= "2007-02-01", ]

# Add a "datetime" column to the data frame showing the precise time of each observation
# This new "datatime" column is of POSIXct class,
# obtained by combining the original "Date" and "Time" columns 
datetime <- paste(as.character(dataProj1$Date),as.character(dataProj1$Time),sep=" ")
datetime <- strptime(datetime,"%d/%m/%Y %H:%M:%S")
DataExtd <- cbind(dataProj1,"datetime"=datetime)

# Turn quantitative observation results into numerics
for(i in 3:9) {
  DataExtd[,i] <- as.numeric(as.character(DataExtd[,i]))
}
