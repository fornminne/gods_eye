# SPECTER GOD'S EYE

Private integration repository for a public-source geospatial intelligence console.

## Upstream

- Source: https://github.com/bilawalsidhu/gods-eye-view
- Source license: MIT (application code only)
- Data/asset licensing: Review upstream LICENSE, DATA_SOURCES.md and public/models/README.md before distribution.

## Import upstream

Run the included `scripts/import-upstream.sh` from a Linux workstation with git installed. It imports upstream source into this repository while retaining upstream history, licenses, and attribution. **It will replace the current scaffold files**, so back up custom work first.

## Run

After import, install Node.js 24.14.x or 26.x, then:

```bash
npm ci
npm run doctor
npm run dev
```

Open http://localhost:4173. API keys are optional for keyless startup. Do not commit secrets or expose the development server to untrusted networks.

## Planned SPECTER modules

- Public aviation, maritime, orbital and environmental layers
- Source provenance and freshness indicators
- Read-only SPECTER/GHOST node telemetry adapter
- Authorized-scope assessment integration, separate from public GEOINT feeds
- Role-based access, audit logs and provider credential isolation

The upstream application is not yet imported by this scaffold commit.
