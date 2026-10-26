# DevOps Intern Final Assessment

[![CI Pipeline](https://github.com/Wandile/devops-intern-final/actions/workflows/ci.yml/badge.svg)](https://github.com/Wandile/devops-intern-final/actions/workflows/ci.yml)

- **Engineer:** Wandile
- **Submission Date:** 2026-10-19
- **Repository:** `devops-intern-final`

---

## 1. Architecture Overview

```text
 [Source Code (GitHub)] 
         │ (Push / PR)
         ▼
 [GitHub Actions CI] ──(Lint & Test)──► [GitHub Container Registry (ghcr.io)]
                                                    │
                                                    ▼
 [Grafana Loki / Promtail] ◄──(Log Scrape)── [HashiCorp Nomad / Consul]
