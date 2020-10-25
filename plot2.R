NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


Em_by_year_Baltimore = NEI %>% filter(fips=='24510') %>% group_by(year) %>% summarise(total = sum(Emissions))



png("plot2.png",width=480,height=480,units="px",bg="transparent")
plot(Em_by_year_Baltimore,  pch=19, main="Total PM2.5 Emission from All Baltimore sources"  )
dev.off()
