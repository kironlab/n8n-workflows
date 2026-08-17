# Content Curation Engine — in progress

This is where `kiron-lab-content-curation-engine-v1.json` will live: the parameterized
workflow (invoked via `Execute Workflow`) that centralizes the heavy logic shared by
all profiles — reading RSS sources, dedup, DeepSeek editorial filter, ES/EN draft
generation, and sending for Telegram review.

Once built and tested with Rob (the first profile in production), the `rob-linkedin/`
workflows split into two thin pieces:

- **Caller** — Schedule Trigger + profile config → `Execute Workflow` (Engine)
- **Approval** — Telegram Trigger (profile's own bot) → match in Sheets → update

When a new profile is added, only its Caller +
Approval need to be built — the Engine does not change.
