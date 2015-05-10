Plot3 <- function()
{
        source('PlotAssignment1/GetData.R')
        plotData <- GetFilteredData();
        
        png(filename='PlotAssignment1/plot3.png')
        plot(plotData$DateTime, plotData$Sub_metering_1, ylab = "Energy sub metering", xlab="" , type = "n")
        points(plotData$DateTime, plotData$Sub_metering_1, col = "black", type = "l")
        points(plotData$DateTime, plotData$Sub_metering_2, col = "red", type = "l")
        points(plotData$DateTime, plotData$Sub_metering_3, col = "blue", type = "l")
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty ='solid')
        dev.off()
}