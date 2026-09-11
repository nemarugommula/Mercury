# Mercury

Autonomous AI trading agent specializing in AI supply chain stocks. Built on Hermes Agent, powered by DeepSeek.

## What It Does

Mercury monitors ~100 AI supply chain companies across producers, AI labs, and consumers. It runs daily scans, researches news, makes buy/sell recommendations, learns from outcomes, and alerts via Telegram.

## Architecture

```
Hermes Agent (on Railway)
├── LLM: DeepSeek V4.1 Flash (switchable to Claude/GPT)
├── Skills: market-scan, deep-analysis, news-research, weekly-reflection, portfolio-review
├── Memory: SQLite (persistent, self-improving)
├── Cron: Weekday 7AM + 4PM scans, Sunday 8PM reflection
├── Alerts: Telegram Bot
└── Data: 100 stocks with bear/base/bull intrinsic values
```

## Setup

1. Clone this repo
2. Copy `.env.example` to `.env` and fill in your API keys
3. Deploy to Railway (connect GitHub repo)
4. Set environment variables in Railway dashboard
5. Mercury starts running on schedule

### Required API Keys

- `DEEPSEEK_API_KEY` — primary LLM (get from platform.deepseek.com)
- `FINNHUB_API_KEY` — stock data (get from finnhub.io)
- `TELEGRAM_BOT_TOKEN` — alerts (create via @BotFather on Telegram)

### Optional

- `ANTHROPIC_API_KEY` — fallback LLM for complex analysis

## Project Structure

```
Mercury/
├── Dockerfile              # Railway deployment
├── railway.toml            # Railway config
├── .env.example            # API keys template
├── config/
│   ├── config.yaml         # Hermes configuration
│   ├── SOUL.md             # Agent identity and system prompt
│   └── memories/
│       ├── MEMORY.md       # Investment memory (evolving)
│       └── USER.md         # Operator profile
├── skills/
│   ├── daily-market-scan/  # Morning + afternoon stock scans
│   ├── deep-analysis/      # Full DCF valuation
│   ├── news-research/      # News impact analysis
│   ├── weekly-reflection/  # Self-improvement loop
│   └── portfolio-review/   # Position management
├── cron/
│   ├── morning-scan.md     # Weekdays 7:00 AM IST
│   ├── afternoon-review.md # Weekdays 4:00 PM IST
│   └── weekly-reflection.md # Sunday 8:00 PM IST
└── data/
    └── watchlist.json      # 100 stocks with intrinsic values
```

## Cost

~$6-7/month (Railway $5 + DeepSeek $1-2)

## License

MIT
