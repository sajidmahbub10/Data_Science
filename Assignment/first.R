install.packages("dplyr")  


sum(is.na(data))
missing <- data[!complete.cases(data),]
print(missing)
data$Assault <- round(data$Assault)
data$Murder <- round(data$Murder)
print(data)
which(is.na(data))

data$Assault <- ifelse(is.na(data$Assault),mean(data$Assault,na.rm =TRUE), data$Assault)
min(data$`Urban population (%)`)
vector <- data$`Urban population (%)`
checkurban <- function(){
  for (x in data$`Urban population (%)`) {
    if(x<2)
    {print("Exists")
    }else{
      print("Not Exists")
      }
  }
}
checkurban()



outUP <- data[(data$`Urban population (%)` < 32 |  data$`Urban population (%)` > 91),]
outUP

outMurder <-  data[(data$Murder > 20 |  data$Murder < 1),]
outMurder

outAssault <-  data[(data$Assault >400 |  data$Assault < 45),]
outAssault














install.packages('ISLR')

vector <- data$Assault
print(vector)

library(dplyr)

new <- data %>% mutate(Type = case_when(
  (data$`Urban population (%)`) < 50 ~ "Small",
  (data$`Urban population (%)`) < 60  ~ "Medium",
  (data$`Urban population (%)`) < 70 ~ "Large",
  (data$`Urban population (%)`) >= 70 ~ "Extra-Large"
  ))

data=data.frame(new)

install.packages('tidyverse')
library(dplyr)
type <- data %>% mutate(Type = case_when(
  vector < 50 ~ "Small",
  vector < 60  ~ "Medium",
  vector < 70 ~ "Large",
  vector > 70 ~ "Extra-Large"
))

format(data$Assault)
data$Assault = as.numeric(format(round(data$Assault,0)))
?data
library(dplyr)
data %>% rename("Urban_Population(%)"="Urban.population....") %>%  glimpse()

sort(data$Assault, TRUE)[1]

write.csv(data,"D:\\data.csv", row.names = FALSE)
