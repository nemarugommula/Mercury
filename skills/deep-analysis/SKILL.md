---
name: deep-analysis
description: Perform a full intrinsic value analysis on a single stock. Includes DCF model, sensitivity analysis, reverse DCF, and cross-checks.
---

# Deep Stock Analysis

Given a stock ticker, perform a comprehensive intrinsic value analysis.

## Steps

1. Identify the company, exchange, and security type.
2. Gather current price, market cap, and key financial metrics.
3. Collect 5+ years of historical financials: revenue, EBIT, net income, OCF, capex, FCF, D&A, SBC, debt, cash, shares.
4. Normalize earnings — adjust for one-time items, restructuring, unusual tax.
5. Calculate historical diagnostics: revenue CAGR, EBIT margin trend, FCF margin, ROIC, capex intensity.
6. Build a 5-year forecast with Bear/Base/Bull scenarios for revenue, EBIT margins, and FCFF.
7. Calculate WACC using current risk-free rate, industry beta, and equity risk premium.
8. Run a FCFF DCF: PV of forecast FCFF + terminal value + equity bridge = intrinsic value per share.
9. Run a reverse DCF: what does the current price imply about growth and margins?
10. Cross-check with P/E, EV/EBITDA, peer multiples.
11. Build two sensitivity tables: WACC x terminal growth, and revenue x margin.
12. Assess risks and assign a confidence level.

## Output

Generate a structured report with:
- Valuation conclusion (current price, bear/base/bull, margin of safety)
- Investment thesis (1 paragraph)
- Historical financials table
- Forecast table
- DCF calculation details
- Sensitivity tables
- Risks and falsifiers
- Confidence level (High/Medium/Low)

Save the report as markdown in `/opt/data/reports/`.
Update the watchlist entry with new intrinsic values.
Send a summary via Telegram.
