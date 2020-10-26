library(dplyr)
library(ggplot2)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


Em_by_year_Baltimore_type = NEI %>% filter(fips=='24510') %>% group_by(year,type) %>% summarise(total = sum(Emissions))



png("plot3.png",width=480,height=480,units="px",bg="transparent")

qplot(year,total,data = Em_by_year_Baltimore_type,geom = c("line","point"),facets = ~type)+
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)"))

dev.off()
