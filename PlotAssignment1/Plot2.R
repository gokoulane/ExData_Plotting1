Plot2 <- function()
{
        source('PlotAssignment1/GetData.R')
        plotData <- GetFilteredData();
        
        png(filename='PlotAssignment1/plot2.png')
        plot(plotData$DateTime, plotData$Global_active_power,ylab='Global Active Power (kilowatts)', xlab = '', type = "l")
        dev.off()
}