data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
head(sub_data)

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GAP <- as.numeric(sub_data$Global_active_power)
png("plot2.png", width=480, height=480)
p <- plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
print(p)
dev.off()