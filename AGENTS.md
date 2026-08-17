# n8n-workflows

Collection of n8n workflows for Kiron Lab.

## Language

- Conversation with the user is always in Mexican Spanish.
- All written artifacts (files, specs, docs, comments) are in English.

## Project Structure

- `workflows/` — n8n workflow exports (JSON, one per workflow).
- `infra/` — `docker-compose.yml` (n8n service) and `deploy-n8n.sh` (deploy + import).

## Conventions

- Workflow exports are named `kiron-labs-<owner>-<topic>-v<n>.json`.
- Use dry-run/DRY_RUN flags for anything that sends external notifications.
- Never hardcode secrets or API keys in workflows or committed files; use n8n credentials or environment variables.

## Rules

- Follow clean-code and minimal-diff practices: the smallest change that works, no speculative abstractions.
- Before running a write on any external system (API calls, messaging, CI, deploy), confirm with the user first. Never push, deploy, or trigger external side effects without explicit approval.
- Verify changes before finishing: validate JSON and review diffs.
