setwd("D:/DataScience/DataScienceCourse/Exxploratory Data Analysis/week 1 Assignment")

dataset <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(dataset) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
dataset_1 <- subset(dataset,dataset$Date=="1/2/2007" | dataset$Date =="2/2/2007")

dataset_1$Date <- as.Date(dataset_1$Date, format="%d/%m/%Y")
dataset_1$Time <- strptime(dataset_1$Time, format="%H:%M:%S")
dataset_1[1:1440,"Time"] <- format(dataset_1[1:1440,"Time"],"2007-02-01 %H:%M:%S")
dataset_1[1441:2880,"Time"] <- format(dataset_1[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(dataset_1$Time,as.numeric(as.character(dataset_1$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)",main = "Global Active Power Vs Time") 

dev.off()