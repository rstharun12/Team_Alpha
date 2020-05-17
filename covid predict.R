



library(dplyr)
library(ggplot2)
library(hrbrthemes)
library(tseries)
library(forecast)
df=read.csv("C:/Users/Sai Sarath/Downloads/nation_level_daily.csv")
head(df)
#Creating a new data frame with Confirmed Cases
df1 <- df[2]
#Converting it to Time Series Object
tsdata <- ts(df1)
ts.plot(tsdata)
#Fitting auto.arima ()
fit2 <- auto.arima(df1, seasonal = FALSE)
fit2
#Forecasting
forecast2 <- forecast(fit2, h = 20)
forecast2
plot(forecast2)
