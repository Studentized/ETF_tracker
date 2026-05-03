# Load the library
library(quantmod)

# Define the stock symbol (e.g., "AAPL" for Apple or "SPY" for an ETF)
ticker <- "VUSA.L"

# Fetch historical data
getSymbols(ticker, src = "yahoo", from = "2026-01-01")

# View the first few rows
head(get(ticker))
