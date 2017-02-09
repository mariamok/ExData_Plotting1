#read in the data file - assumes file is in current working dir
#columns separated by ";" and NA values are represented by "?"
print("Loading data.  This may take a while...")

setwd("~/Documents/Coursera/ExploreData/ExData_Plotting1")

hpcall <- read.csv("household_power_consumption.txt", 
                   header = TRUE, 
                   sep = ";",
                   na.strings = c("?")
                   )

#convert date and time columns from class factor to class date/time
hpcall$Date <- strptime(hpcall$Date, "%d/%m/%Y")
hpcall$Time <- strftime(strptime(hpcall$Time, format="%H:%M:%S"),"%H:%M:%S")

#subset so we are only working with records between 2007-02-01 and 2007-02-02
#use this new dataset for plotting
hpc <- subset(hpcall, Date>="2007-02-01" & Date<="2007-02-02")

print("Done loading data...")
#create a field that combines date and time to use on the x-axis
hpc$datetime <- as.POSIXct(paste(hpc$Date,hpc$Time))

#remove the original ds as it will not be used..
rm("hpcall")



