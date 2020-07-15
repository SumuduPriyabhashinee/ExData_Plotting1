setwd("D:/DataScience/DataScienceCourse/Exxploratory Data Analysis/week 1 Assignment")

dataset <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(dataset) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
dataset_1 <- subset(dataset,dataset$Date=="1/2/2007" | dataset$Date =="2/2/2007")

png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(dataset_1$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()