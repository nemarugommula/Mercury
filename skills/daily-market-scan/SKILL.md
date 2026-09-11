---
name: daily-market-scan
description: Scan all watchlist stocks for price changes, news catalysts, and buy/sell zone entries. Run every weekday morning and afternoon.
---

# Daily Market Scan

Perform a comprehensive scan of the Mercury watchlist.

## Steps

1. Load the watchlist from `/opt/data/data/watchlist.json`.
2. For each stock, check the current price using available tools.
3. Calculate margin of safety: `1 - (current_price / fair_value_base)`.
4. Flag any stock that has:
   - Entered the buy zone (MoS > 15%)
   - Crossed above the bull value (potential trim)
   - Moved more than 5% in either direction since last scan
   - Earnings report within the next 7 days
5. Check financial news for the top movers and any AI supply chain developments.
6. Search your memory for relevant past decisions on flagged stocks.
7. For each flagged stock, provide a recommendation: BUY / SELL / WATCH / HOLD with reasoning.
8. Send a summary alert via Telegram with all flagged stocks and recommendations.
9. Log this scan's results and any decisions to memory.

## Output Format

Send a Telegram message with:
- Date and scan type (morning/afternoon)
- Market summary (1-2 sentences)
- Flagged stocks table (ticker, price, MoS, action, reason)
- Any new buy/sell zone entries highlighted
- Note: "This is analysis, not financial advice."

## Memory Updates

After each scan:
- Update the last-scanned price for each stock in memory
- Log any new recommendations with full reasoning
- Note any pattern matches with past decisions
