# Loki Log Aggregation Setup

## 1. Stack Initialization
To spin up the logging infrastructure (Loki, Promtail, and Grafana), run:
```bash
docker compose -f monitoring/docker-compose.yaml up -d
