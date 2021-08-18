# Generate Plot for Plot 4 and copy to plot4.png
# This consissts of 4 plots in one plot region
# define the number of plots
par(mfrow = c(2, 2))
# create first plot in the top left quadrant
plot(two_days$Date_Time, two_days$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
# add second plot to the top right quadrant
plot(two_days$Date_Time, two_days$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
# add third plot to the lower left quadrant
plot(two_days$Date_Time, two_days$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(two_days$Date_Time, two_days$Sub_metering_2, col = "red")
lines(two_days$Date_Time, two_days$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, col = c("black", "red", "blue"), cex = 0.8, bty = "n")
# add fourth plot to the lower right quadrant
plot(two_days$Date_Time, two_days$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
dev.copy(png, file = "course4/plot4.png", height = 480, width = 480)
dev.off()
