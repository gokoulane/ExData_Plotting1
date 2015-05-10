Plot4 <- function()
{
        source('PlotAssignment1/GetData.R')
        plotData <- GetFilteredData();
        
        png(filename='PlotAssignment1/plot4.png')
        par(mfrow = c(2, 2))
        
        #plot 1
        plot(plotData$DateTime, plotData$Global_active_power,ylab='Global Active Power', xlab = '', type = "l")

        #plot2
        plot(plotData$DateTime, plotData$Voltage,ylab='Voltage', xlab = 'datetime', type = "l")
        
        #plot 2
        plot(plotData$DateTime, plotData$Sub_metering_1, ylab = "Energy sub metering", xlab="" , type = "n")
        points(plotData$DateTime, plotData$Sub_metering_1, col = "black", type = "l")
        points(plotData$DateTime, plotData$Sub_metering_2, col = "red", type = "l")
        points(plotData$DateTime, plotData$Sub_metering_3, col = "blue", type = "l")
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty ='solid')
        
       
        #plot 3
        plot(plotData$DateTime, plotData$Global_reactive_power,ylab='Global_reactive_power', xlab = 'datetime', type = "l")
        
        dev.off()
}