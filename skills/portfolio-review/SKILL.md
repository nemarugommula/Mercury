---
name: portfolio-review
description: Review current portfolio positions, check P&L, and assess whether any positions should be trimmed or added to.
---

# Portfolio Review

Review all open positions and their current status.

## Steps

1. Load current portfolio from memory (positions, entry prices, entry dates, tranche info).
2. Fetch current prices for all held positions.
3. Calculate for each position:
   - Unrealized P&L (absolute and percentage)
   - Current margin of safety vs intrinsic value
   - Days held
   - Whether the original thesis still holds
4. Flag positions that need attention:
   - Profit > 30% — consider trimming?
   - Loss > 15% — is thesis intact?
   - Price above bull value — overvalued, trim
   - Thesis-breaking news since entry
5. Check portfolio concentration:
   - Any single stock > 15% of portfolio?
   - Any single segment > 30%?
   - Overall correlation exposure

## Output

Send a Telegram message with:
- Portfolio summary table (stock, entry, current, P&L%, thesis status)
- Total portfolio P&L
- Any positions flagged for action
- Concentration warnings if applicable
