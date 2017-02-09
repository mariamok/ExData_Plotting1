#Plot 3
if (!exists("hpc")) {
  source("loadHPCdata.R")
} 

#reset the graphic device for 1 chart
par(mfrow=c(1,1))

plot(hpc$datetime,
     as.numeric(as.character(hpc$Sub_metering_1)), 
     type="l", 
     xlab="", 
     ylab="Energy sub metering"
)

lines(hpc$datetime, as.numeric(as.character(hpc$Sub_metering_2)), col = "red")
lines(hpc$datetime, as.numeric(as.character(hpc$Sub_metering_3)), col = "blue")

legend("topright", lty=c(1,1,1),
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# save Plot3 to file
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
