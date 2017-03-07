#Read dataset
NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")
#aggregate the data
NEI<-subset(NEI, fips == "24510")
agg<-tapply(NEI$Emissions,INDEX=NEI$year,FUN=sum)
png("plot2.png", width=480, height=480)
barplot(agg,main="Emissions in Baltimore", col="blue", ylab="Total Emissions",xlab="Year")
dev.off()