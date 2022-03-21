rm(list=ls())
library(irtoys)

library(readxl)
enem <- read_excel("C:/Users/patri/Desktop/CAT-GYM/file100000.xlsx")

enemdata4 <- data.frame(enem[,1:45])

param_MT <-est(enemdata4, model="3PL", engine="ltm",nqp=20)
param_MT$est

plot(irf(param_MT),label=TRUE, main="Item response function - MT")

rm(list=ls())
library(irtoys)

library(readxl)
enem <- read_excel("C:/Users/patri/Desktop/CAT-GYM/file100000.xlsx")

data2 <- data.frame(enem[,46:90])

param_CN <-est(data2, model="3PL", engine="ltm",nqp=20)
param_CN$est

plot(irf(param_CN),label=TRUE, main="Item response function - CN")

rm(list=ls())
library(irtoys)

library(readxl)
enem <- read_excel("C:/Users/patri/Desktop/CAT-GYM/file100000.xlsx")

data1 <- data.frame(enem[,91:135])

param_CH <-est(data1, model="3PL", engine="ltm",nqp=20)
param_CH$est
plot(irf(param_CH),label=TRUE, main="Item response function - CH")

rm(list=ls())
library(irtoys)

library(readxl)
enem <- read_excel("C:/Users/patri/Desktop/CAT-GYM/file100000.xlsx")

data3 <- data.frame(enem[,136:175])

param_LC <-est(data3, model="3PL", engine="ltm",nqp=20)
param_LC$est

plot(irf(param_LC),label=TRUE, main="Item response function - LC")