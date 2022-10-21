library(dplyr)

data %>% mutate(Type = case_when(
  (data$`Urban population (%)`) < 50 ~ "Small",
  (data$`Urban population (%)`) < 60  ~ "Medium",
  (data$`Urban population (%)`) < 70 ~ "Large",
  (data$`Urban population (%)`) >= 70 ~ "Extra-Large"
))