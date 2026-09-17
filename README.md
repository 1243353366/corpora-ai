# Corpora AI

A single-file Cloudflare Worker intelligence engine for Aadi's Digital Lab.
Paste or query a text corpus and get AI summaries, typed entities, topics,
sentiment, key-term frequency, and readability - with an algorithmic
fallback when Workers AI is unavailable.

**For ethical research use only - a research tool.** The corpus stores
third-party upstream material (e.g. MITRE ATT&CK STIX data, ahmia-crawler,
clinical-nlp-pipeline) strictly with attribution: each record keeps its
upstream project, repository URL, license, and author information.

## Endpoints

- `POST /api/analyze` - AI + algorithmic text analysis (10 req/min, 32KB cap)
- `POST /api/corpora/ingest` - Bearer-token ingestion into the shared D1 (`blog_db`, `corpora` table)
- `GET /api/corpora/search?q=` - keyword search over the corpus, JSON results
- `GET /health` - service status

## Deploy

```sh
npx wrangler secret put INGEST_TOKEN   # ingestion bearer token
npx wrangler d1 execute blog_db --remote --file=schema-corpora.sql
npx wrangler deploy
```

Zero npm dependencies. Strict CSP, rate limiting, dark-mode-first UI.
Model: `@cf/openai/gpt-oss-20b` (Workers AI) with `max_tokens: 2048`.
