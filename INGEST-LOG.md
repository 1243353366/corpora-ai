# Ingestion Log

Metrics per ingestion run: source | records_added | duplicates | errors | processing_time | digest_success
Duplicates are detected by exact-title match against the live index before ingest.

| Date | Source | records_added | duplicates | errors | processing_time | digest_success |
|------|--------|---------------|------------|--------|-----------------|----------------|
| 2026-09-17 | ahmia-crawler | 11 | 0 | 0 | ~30s | 6/6 |
| 2026-09-17 | clinical-nlp-pipeline | 7 | 0 | 0 | ~20s | 3/3 |
| 2026-09-17 | attack-stix-data | 6 | 0 | 0 | ~10s | 1/1 |
| 2026-09-17 | portable-ai-usb + policy record | 9 | 0 | 0 | ~25s | 4/4 |
| 2026-09-17 | cyber-warfare topic batch (PZD framework, cyberwar-tools-ua, 2 catalogues) | 11 | 0 | 0 | 3.4s | 5/5 |

Corpus total after batch: 43 records across 8 source chips.
Retrieval-quality spot checks (2026-09-17): "exploit framework" -> 5 hits, "squad303" -> 3, "sandworm" -> 1, "athena" -> 1, "cyber warfare" brief summary -> 12 records digested.
