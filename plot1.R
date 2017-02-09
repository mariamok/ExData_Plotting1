##Plot 1
if (!exists("hpc")) {
  source("loadHPCdata.R")
  } 

#reset the graphic device for 1 chart
par(mfrow=c(1,1))

with(hpc, hist(as.numeric(as.character(hpc$Global_active_power)), 
               main="Global Active Power",
               col="red",
               xlab="Global Active Power (kilowatts)",
               freq = TRUE))

#create the file
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
