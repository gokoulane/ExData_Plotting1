Plot1 <- function()
{
        source('PlotAssignment1/GetData.R')
        plotData <- GetFilteredData();
        
        png(filename='PlotAssignment1/plot1.png')
        hist(plotData$Global_active_power,col="red", xlab="Global Active Power (killowats)", main="Global Active Power")
        dev.off()
}