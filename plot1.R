NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


Em_by_year = NEI %>% group_by(year) %>% summarise(total = sum(Emissions))



png("plot1.png",width=480,height=480,units="px",bg="transparent")
plot(Em_by_year,  pch=19, main="Total PM2.5 Emission from All US sources"  )
dev.off()
