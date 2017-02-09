#Plot 4
if (!exists("hpc")) {
  source("loadHPCdata.R")
} 

#load 4 charts L->R, top to bottom into the graphics device
par(mfrow=c(2,2))

#chart 1
plot(hpc$datetime,
     as.numeric(as.character(hpc$Global_active_power)), 
     type="l", 
     xlab="", 
     ylab="Global Active Power")

#chart 2
plot(hpc$datetime,
     as.numeric(as.character(hpc$Voltage)), 
     type="l", 
     xlab="datetime", 
     ylab="Voltage")

#chart 3
plot(hpc$datetime,
     as.numeric(as.character(hpc$Sub_metering_1)), 
     type="l", 
     xlab="", 
     ylab="Energy sub metering"
)

lines(hpc$datetime, as.numeric(as.character(hpc$Sub_metering_2)), col = "red")
lines(hpc$datetime, as.numeric(as.character(hpc$Sub_metering_3)), col = "blue")

legend("topright", lty=c(1,1,1), cex = .65, bty="n",
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#chart 4
plot(hpc$datetime,
     as.numeric(as.character(hpc$Global_reactive_power)), 
     type="l", 
     xlab="datetime",
     ylab="Global_reactive_power")

# save Plot4 to file
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()

