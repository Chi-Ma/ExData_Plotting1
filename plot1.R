data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

sub_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
head(sub_data)
GAP <- as.numeric(sub_data$Global_active_power)
png("plot1.png", width=480, height=480)
p <- hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
print(p)
dev.off()