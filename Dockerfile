FROM nousresearch/hermes-agent:latest

RUN pip install --no-cache-dir yfinance pandas matplotlib requests fredapi

COPY config/config.yaml /opt/data/config.yaml
COPY config/SOUL.md /opt/data/SOUL.md
COPY config/memories/ /opt/data/memories/
COPY skills/ /opt/data/skills/
COPY data/ /opt/data/data/
COPY cron/ /opt/data/cron/
