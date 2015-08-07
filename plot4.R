ata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
head(sub_data)

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP <- as.numeric(sub_data$Global_active_power)
GRP <- as.numeric(sub_data$Global_reactive_power)
V <- as.numeric(sub_data$Voltage)
sub_Metering1 <- as.numeric(sub_data$Sub_metering_1)
sub_Metering2 <- as.numeric(sub_data$Sub_metering_2)
sub_Metering3 <- as.numeric(sub_data$Sub_metering_3)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))

p1 <- plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power", cex=0.2)
p2 <- plot(datetime, V, type="l", xlab="datetime", ylab="Voltage")
p3 <- plot(datetime, sub_Metering1, type="l", ylab="Energy Submetering", xlab="")
+ lines(datetime, sub_Metering2, type="l", col="red")
+ lines(datetime, sub_Metering3, type="l", col="blue")
+ legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
p4 <- plot(datetime, GRP, type="l", xlab="datetime", ylab="Global_reactive_power")
