library(tidyverse)
library(lubridate)
library(janitor)
stocks <- read_csv("C:/Users/hp/Desktop/practice/stocks.csv")
View(stocks)
stocks<-stocks %>%
  mutate(
    Name= toupper(trimws(Name)),
    Date=as.Date(Date)
  )
library(dplyr)
stocks_analysis<-stocks %>%
  group_by(Name) %>%
  arrange(Date) %>%
  mutate(
    Daily_Return=(Close-lag(Close))/
      lag(Close),
    Traded_Value=Volume*Close,
    SMA_50=zoo::rollmean(Close,k=50,
                         fill = NA,align = "right")
  )
summary_stat<-stocks_analysis%>%
  group_by(Name) %>%
  summarise(
    Avg_Daily_Return=mean(Daily_Return,
                          na.rm=TRUE),
    Max_Price=max(High, na.rm = TRUE),
    Min_Price=min(Low, na.rm = TRUE),
    Total_Volume=
      sum(as.numeric(Volume), na.rm = TRUE),
    Total_Traded_Value=
      sum(Traded_Value, na.rm = TRUE)
  )
write.csv(summary_stat,
          "Summary_Analysis_Final.csv", row.names = FALSE)
write.csv(stocks_analysis,
          "Stocks_Cleaned.csv", row.names = FALSE)
library(prophet)
df_forecast<-stocks %>%
  filter(Name=="Riyad Bank")%>%
  select(ds=Date,y=Close)
m<-prophet(df_forecast)
future<-make_future_dataframe(m,
                              periods = 30)
forecast<-predict(m,future)
plot(m,forecast)
