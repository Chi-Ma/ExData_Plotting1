data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
head(sub_data)

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP <- as.numeric(sub_data$Global_active_power)
sub_Metering1 <- as.numeric(sub_data$Sub_metering_1)
sub_Metering2 <- as.numeric(sub_data$Sub_metering_2)
sub_Metering3 <- as.numeric(sub_data$Sub_metering_3)

png("plot3.png", width=480, height=480)
p <- plot(datetime, sub_Metering1, type="l", ylab="Energy Submetering", xlab="")
+lines(datetime, sub_Metering2, type="l", col="red")
+lines(datetime, sub_Metering3, type="l", col="blue")
+legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col=c("black", "red", "blue"))
print(p)
dev.off()

