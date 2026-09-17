-- Corpora AI intelligence index, stored inside the lab's existing blog_db.
-- Same D1 the lab uses; no second database.
CREATE TABLE IF NOT EXISTS corpora (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  source TEXT NOT NULL,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  keywords TEXT NOT NULL DEFAULT '',
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_corpora_source ON corpora(source);
