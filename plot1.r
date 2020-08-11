library(datasets)

df <- read.table("household_power_consumption.txt", sep=";", header = TRUE)  #Reading the data
df$Date <- as.Date(df$Date, format="%d/%m/%Y")  #converting 'Date' variables to Date class

active_power <- subset(df, Date == "2007-02-01" | Date == "2007-02-02")$Global_active_power #subsetting the required data.

png("plot1.png", width = 480, height = 480) #plotting
hist(as.numeric(as.character(active_power)), col = "red", main = "Global Active Power",xlab = "Global Active Power (kilowatts)")

dev.off()
