#Run plots 1-5 first

#plot 6: Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?
la.vehicle <- vehicle.summ[vehicle.summ$fips==06037,]
la.vehicle$City<-"Los Angeles"
balt.vehicle$City <- "Baltimore"
balt.la <- rbind(la.vehicle,balt.vehicle)
q6.plot <- ggplot(balt.la, aes(x=factor(year),y=Emissions,fill=City))+geom_bar(aes(fill=year),stat="identity")+facet_grid(.~City)+ labs(x="year", y="Total PM2.5 (KiloTons)",title="Total Vehicle PM2.5 Emissions in Baltimore and LA from 1999-2008")
print(q6.plot)
