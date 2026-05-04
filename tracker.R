# Load the library
library(quantmod)

# Define the stock symbol (e.g., "AAPL" for Apple or "SPY" for an ETF)
ticker <- "VUSA.L"
watchList <- c("VUSA.L", "VUAG.L", "IITU.L", "VUKE.L", "VWRL.L")

# Fetch historical data
getSymbols(ticker, src = "yahoo", from = "2026-01-01")
getSymbols(watchList, src = "yahoo", from = "2026-01-01")

# View the first few rows
head(get(ticker))

for(ticker1 in watchList) {
  print(paste("Showing data for:", ticker1))
  print(head(get(ticker1)))
}

# Create a candlestick chart
chartSeries(get(ticker),
            name = paste("Price Trend:", ticker),
            theme = chartTheme("white"))

# Add a technical indicator (e.g., a 20-day moving average)
addSMA(n = 20, col = "blue")

# Get current quotes for the whole list
current_prices <- getQuote(watchList)

# View the summary table
print(current_prices)

