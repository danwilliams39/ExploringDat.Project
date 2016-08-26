#Run plots 1-3 first

#plot 4: Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
combus <- grepl("comb", master$SCC.Level.One, ignore.case=TRUE)
coal <- grepl("coal", master$SCC.Level.Three, ignore.case=TRUE)
coal.combus <- (coal & combus)
coal.combus.data <- master[coal.combus,]
combus.scc <- coal.combus.data$SCC
combus.summ <- summary.pm25[summary.pm25$SCC %in% combus.scc,]
q.4plot <- ggplot(combus.summ, aes(factor(year),Emissions/10^5)) +geom_bar(stat="identity")+labs(x="year",y="Total PM2.5 (10^5 Tons)")+labs(title="PM2.5 Combusion Across US from 1999-2008")
print(q.4plot)
