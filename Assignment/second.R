#Data Cleaning
missing <- data[!complete.cases(data),]
print(missing)

data$Assault <- ifelse(is.na(data$Assault),mean(data$Assault,na.rm =TRUE), data$Assault) 


outMurder <-  data[(data$Murder > 20 |  data$Murder < 1),]
outMurder

outAssault <-  data[(data$Assault >400 |  data$Assault < 45),]
outAssault 

outUP <- data[(data$`Urban population (%)` < 32 |  data$`Urban population (%)` > 91),]
outUP

data$Assault[data$Assault == 879] <- sort(data$Assault, TRUE)[2]
  median(data$Assault)
  sort(data$Assault, TRUE)[2] 

data$`Urban population (%)`[data$`Urban population (%)` == 570] <- 57 
data$`Urban population (%)`[data$`Urban population (%)` == 6] <- 60

data[duplicated(data),]


#Data Integration



library(dplyr)
new <- data %>% mutate(Type = case_when(
  (data$`Urban population (%)`) < 50 ~ "Small",
  (data$`Urban population (%)`) < 60  ~ "Medium",
  (data$`Urban population (%)`) < 70 ~ "Large",
  (data$`Urban population (%)`) >= 70 ~ "Extra-Large"
))


data=data.frame(new)



#Data Transformation
class(data)


data$Type <- factor(data$Type, ordered = TRUE, 
                    levels =c("Small","Medium","Large","Extra-Large"))
levels(data$Type)

 data$Murder <- round (data$Murder)

 
 data$Murder <- as.integer(data$Murder)
 data$Urban.population.... <-as.integer(data$Urban.population....)
 
 
 
#Data Reduction
 
 data$Assault = as.numeric(format(round(data$Assault,0)))

 glimpse(data)
