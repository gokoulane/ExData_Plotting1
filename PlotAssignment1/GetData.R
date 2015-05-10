#Reading, Cleaning and Filtering Of Data
GetFilteredData <- function()
{
        if (!file.exists("PlotAssignment1/FilteredData.rds"))
        {
                wholeData <- read.table("D:/RData/PlotAssignment1/household_power_consumption.txt", header = TRUE, sep = ";", na.strings='?', colClasses=c(rep('character', 2), rep('numeric', 7)))
                wholeData$Date <- as.Date(wholeData$Date,"%d/%m/%Y")
                wholeData$Time <- hms(wholeData$Time)
                cleanData <- wholeData[complete.cases(wholeData),]
                filteredData <- subset(cleanData, year(Date) == 2007 & month(Date) == 2 &(day(Date) == 1 | day(Date) == 2) )
                filteredData$DateTime <- filteredData$Date + filteredData$Time;
                saveRDS(filteredData, file="PlotAssignment1/FilteredData.rds")
                return(filteredData)
        }
        else
        {
                filteredData <- readRDS("PlotAssignment1/FilteredData.rds")
                return(filteredData)
        }
}