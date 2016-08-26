#run code from plots 1 and 2 first

#plot 3: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City?
#create a table of sum of emissions by type
balt.type.list=split(balt,balt$type)
balt.list.sum=lapply(balt.type.list,function(tmp) tapply(tmp[,"Emissions"],tmp[,"year"],sum))
balt.sum.tab=as.data.frame(balt.list.sum)
balt.sum.tab$year=rownames(balt.sum.tab)
