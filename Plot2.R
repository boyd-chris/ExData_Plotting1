# download zip file from the site provided
# unzip the zip file
# copy 'household_power_consumption.txt' from the zip to the desired folder
# for this exercise 'course4' under the working directory is used
# load data into the data.frame called 'full_data'
full_data <- read.table("course4/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";")
# extract 2 days (1/2/2007 & 2/2/2007) of data to the data.frame two_days
two_days <- full_data[full_data[,1] == "1/2/2007" | full_data[,1] == "2/2/2007",]
# add a new column Date_Time which contains Date and Time of observations
two_days$Date_Time <- strptime(paste(two_days$Date, two_days$Time), "%d/%m/%Y %H:%M:%S")# Generate Plot for Plot 2 and copy to plot2.png
plot(two_days$Date_Time, two_days$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "course4/plot2.png", height = 480, width = 480)
dev.off()
