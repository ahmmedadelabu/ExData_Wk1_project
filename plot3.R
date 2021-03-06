
setwd('G:\\cousera\\exdata2Fdata2Fhousehold_power_consumption\\')
daat <- read.table('household_power_consumption.txt',header=TRUE,sep=";",na.strings="?",colClasses=c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
names(daat)

#plot3
library(base)
sub1 <- daat$Sub_metering_1[daat$Date == '1/2/2007' | daat$Date == '2/2/2007']
sub2 <- daat$Sub_metering_2[daat$Date == '1/2/2007' | daat$Date == '2/2/2007']
sub3 <- daat$Sub_metering_3[daat$Date == '1/2/2007' | daat$Date == '2/2/2007']
png(filename = "plot3.png", width = 480, height = 480,units = "px", pointsize = 12, bg = "white", res = NA,restoreConsole = TRUE)
plot(sub1,col='red',type='l',ylab='Energy sub metering',xlab='',xaxt='n')
lines(sub2,col='green',type='l')
lines(sub3,col='yellow',type='l')
legend("topright", lty=1,col = c("red","green", "yellow"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
dev.off()
