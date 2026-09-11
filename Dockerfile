FROM nousresearch/hermes-agent:latest

RUN python3 -m ensurepip --upgrade 2>/dev/null; \
    python3 -m pip install --break-system-packages --no-cache-dir \
    yfinance pandas matplotlib requests fredapi

# Copy config (don't overwrite /opt/data/skills, merge into it)
COPY config/config.yaml /opt/data/config.yaml
COPY config/SOUL.md /opt/data/SOUL.md
COPY config/memories/ /opt/data/memories/
COPY data/ /opt/data/data/
COPY cron/ /opt/data/cron/

# Copy our custom skills into a subdirectory (avoids overwriting bundled skills)
COPY skills/ /opt/data/skills/mercury/

# Fix permissions
RUN chmod -R a+rw /opt/data/

# Start Hermes in gateway mode (headless, no interactive terminal)
CMD ["hermes", "gateway", "--profile", "default"]
