FROM nousresearch/hermes-agent:latest

RUN uv pip install --system --no-cache yfinance pandas matplotlib requests fredapi

COPY config/config.yaml /opt/data/config.yaml
COPY config/SOUL.md /opt/data/SOUL.md
COPY config/memories/ /opt/data/memories/
COPY skills/ /opt/data/skills/
COPY data/ /opt/data/data/
COPY cron/ /opt/data/cron/
