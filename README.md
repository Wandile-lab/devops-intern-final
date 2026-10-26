# DevOps Intern Final Assessment

- **Engineer:** Wandile Ndlovu
- **Submission Date:** 2026-10-26
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
