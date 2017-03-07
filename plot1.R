#Read dataset
NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")
#aggregate the data
agg<-tapply(NEI$Emissions,INDEX=NEI$year,FUN=sum)
#Call to plot
png("plot1.png", width=480, height=480)
barplot(agg,main="Emissions by Year", col="blue", ylab="Total Emissions",xlab="Year")
dev.off()