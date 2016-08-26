#Run Plot 1 Code first

#plot 2: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008?
balt=subset(master,fips=="24510")
balt.table=with(balt, tapply(Emissions,year,sum))
plot(balt.table,type='l',xlab="Year",ylab="Total PM2.5 Emissions",lwd=3,col="navy",main="Total PM2.5 Emissions in Baltimore City",xaxt='n')
axis(1,at=seq(1:4),labels=rownames(balt.table))
