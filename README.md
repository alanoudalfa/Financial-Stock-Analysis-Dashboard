Saudi Stock Market Analytics Project
Why this project?
I’ve always been interested in how we can use data to understand stock market movements. For this assessment, I decided to look at Saudi stock data to see if we can find clear trends. My main goal was to answer a few simple questions: Is the stock price doing better than its average? Which companies are leading the market right now? And where is the price likely headed?
Where did the data come from?
I got the raw data for this project from Kaggle. It’s a dataset that tracks Saudi stock market history, and I chose it because it’s detailed enough to show real patterns and trends.
How I built it:
![R Processing Code](Stocks%20Code.png)
I started in RStudio. I didn't just want raw numbers, so I wrote a script to clean the data and create new "insights" like the 50-day Moving Average (SMA_50) and Daily Returns. I used tidyverse and zoo to make the calculations accurate. After cleaning everything in R, I moved to Power BI. I built an interactive dashboard where you can filter by company and see the performance instantly. I also added a trend line to predict where the price might go next, which helps in seeing the bigger picture.
My Top Findings:
I noticed that whenever a stock price stays above the SMA_50 line, it usually shows a strong positive trend. and companies like SAPTCO really stood out with high daily returns during the period I analyzed. There’s a very clear link between how much a stock is traded and how much its price jumps around.
Dashboard Preview
![Dashboard Page 1](Stocks%20Dashboard1.png)
![Dashboard Page 2](Stocks%20Dashboard2.png)
You can interact with the live report and try the filters yourself here:
[https://app.powerbi.com/view?r=eyJrIjoiMjk5NmVlMmUtYjQ0NC00YjNmLTg2NmQtY2IzOTZjZjhkOWYyIiwidCI6ImZhYjkyNDIxLWMwNzItNDA1OC1iMTliLTFkYWY5MzQ5NTcyMiIsImMiOjl9]
