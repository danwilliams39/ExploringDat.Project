install.packages("gridExtra")
library(gridExtra)


unzip("Data.2.zip")
class.code=readRDS("Source_Classification_Code.rds")
summary.pm25=readRDS("summarySCC_PM25.rds")
master=merge(class.code[,c("SCC","SCC.Level.One","SCC.Level.Two","SCC.Level.Three")],summary.pm25,by.x="SCC",by.y = "SCC")
year.table=with(master,tapply(Emissions,year,sum))

#plot 1 of summary of values
plot(year.table,type='l',xlab="Year",ylab="Total PM2.5 Emissions",lwd=3,col="navy",main="Total PM2.5 Emissions in United States",xaxt='n')
axis(1,at=seq(1:4),labels=rownames(year.table))
