# SPECTER Integration Plan

## Stage 1: Baseline import
- Import upstream to a separate branch and preserve MIT attribution.
- Run npm ci, npm run doctor, npm test and npm run build on supported Node versions.
- Review third-party datasets and model licenses before deployment.

## Stage 2: Security hardening
- Restrict server binding and allowed hosts.
- Keep provider credentials server-side, out of source control.
- Add dependency scanning and a secret-scanning CI gate.
- Mark source freshness and confidence; avoid presenting inferred observations as verified facts.

## Stage 3: SPECTER integration
- Add a read-only node-health adapter for ROCK 4C+ and GHOST telemetry.
- Require authentication and explicit scope for active assessment tools.
- Log operator actions and isolate assessment jobs from public intelligence feeds.
