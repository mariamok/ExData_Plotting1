#Plot 2
if (!exists("hpc")) {
  source("loadHPCdata.R")
} 

#reset the graphic device for 1 chart
par(mfrow=c(1,1))

#make the plot
plot(hpc$datetime,
     as.numeric(as.character(hpc$Global_active_power)), 
     type="l", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")

# save Plot2 to file
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
