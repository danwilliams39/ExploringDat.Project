#Run plots 1-4 first

#plot 5: How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
vehicle <- grepl("vehicle",master$SCC.Level.Two,ignore.case=TRUE)
vehicle.scc = master[vehicle,]$SCC
vehicle.summ= summary.pm25[summary.pm25$SCC %in% vehicle.scc,]
balt.vehicle = vehicle.summ[vehicle.summ$fips==24510,]
q5.plot= ggplot(balt.vehicle, aes(factor(year),Emissions))+geom_bar(stat="identity")+labs(x="year",y="Total PM2.5 (10^5 Tons)",title="PM2.5 from Vehicles in Baltimore from 1999-2008")
print(q5.plot)
