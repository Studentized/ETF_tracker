# Load the library
library(quantmod)

# Define the stock symbol (e.g., "AAPL" for Apple or "SPY" for an ETF)
ticker <- "VUSA.L"

# Fetch historical data
getSymbols(ticker, src = "yahoo", from = "2026-01-01")

# View the first few rows
head(get(ticker))

# Create a candlestick chart
chartSeries(get(ticker),
            name = paste("Price Trend:", ticker),
            theme = chartTheme("white"))

# Add a technical indicator (e.g., a 20-day moving average)
addSMA(n = 20, col = "blue")
