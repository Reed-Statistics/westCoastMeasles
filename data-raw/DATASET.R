## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(stringi)

options(digits=7)
california <-read.csv("~/wrangling_measles_data/california.csv")
california<-california %>%
  mutate(lat = as.character(lat), lng = as.character(lng))%>%
  mutate(lat = as.numeric(lat), lng = as.numeric(lng))%>%
  select(-c(enroll))
oregon <-read.csv("~/wrangling_measles_data/oregon.csv")%>%
  select(-c(enroll))%>%
  mutate(type = NA, city = NA)
washington <-read.csv("~/wrangling_measles_data/washington.csv")%>%
  select(-c(enrollment))%>%
  mutate(year="2017-2018", type = NA)

west_measles_data <-rbind(washington, oregon)
west_measles_data <-rbind(west_measles_data, california)


west_measles_data <- west_measles_data %>% 
  mutate(name = stri_enc_toutf8(name, is_unknown_8bit=TRUE),
         city = stri_enc_toutf8(city, is_unknown_8bit=TRUE),
         county = stri_enc_toutf8(county))
usethis::use_data(west_measles_data, overwrite = TRUE)

