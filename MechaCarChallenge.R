library(jsonlite)
library(tidyverse)

#Deliverable 1
mechacar_data <- read.csv(file='MechaCar_mpg.csv')
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_data) #create the model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_data))

#Deliverable 2
supension_data <- read.csv('Suspension_Coil.csv')
total_summary <- supension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI) ,.groups = 'keep')
lot_summary <- supension_data %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI) ,.groups = 'keep')

#Deliverable 3
#Across all manufacturing lots
plt <- ggplot(supension_data, aes(x=PSI))
plt + geom_density()#Ensure the data is normaly distributed
t.test(supension_data$PSI, mu=1500)

#T test per lot
lot_data <- subset(supension_data, Manufacturing_Lot=='Lot1')
t.test(lot_data$PSI, mu=1500)

lot_data2 <- subset(supension_data, Manufacturing_Lot=='Lot2')
t.test(lot_data2$PSI, mu=1500)

lot_data3 <- subset(supension_data, Manufacturing_Lot=='Lot3')
t.test(lot_data3$PSI, mu=1500)

#Deliverable 4