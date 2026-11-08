# CORRECTIONS.md — dk-medcom-carecommunication

Project: medcomdk/dk-medcom-carecommunication
Base branch analyzed: master
Destination fork: https://github.com/admeduardovieira/dk-medcom-carecommunication

## Corrections proposed

| ID | Title | Severity | Status | Risk | Files involved |
|----|-------|----------|--------|------|----------------|
| REA-dkmedcom-001 | No sushi-config.yaml | P3 | PROPOSING | Low | `sushi-config.yaml` (new) |
| REA-dkmedcom-002 | No automated tests for FSH/StructureDefinitions | P3 | PROPOSING | Medium | `test/` (new) |
| REA-dkmedcom-003 | Issue #185: UUID v4 validation not implemented | P2 | PROPOSING | Low | issue #185 |

## Details of proposed corrections

### REA-dkmedcom-001 — No sushi-config.yaml
**Problem:** No build configuration file for SUSHI.
**Fix:** Add sushi-config.yaml with id, canonical, name, version, fhirVersion, dependencies.
**Validation:** Confirm SUSHI can process the configuration.

### REA-dkmedcom-002 — No automated tests
**Problem:** No tests validate FSH profiles.
**Fix:** Add FSH validation tests.
**Validation:** Run tests; confirm profiles compile.

### REA-dkmedcom-003 — UUID v4 validation (Issue #185)
**Problem:** Issue #185 requests UUID v4 validation. Requires code inspection to implement.
**Fix:** Implement UUID v4 validation in relevant FSH invariants or code.
**Validation:** Confirm UUID v4 values pass validation.

## Not implemented
None implemented in this execution; proposals for maintainers.

## Publication plan
- Fork: `admeduardovieira/dk-medcom-carecommunication` (already exists).
- No code changes (only audit reports).
- Commit identity: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PR to `medcomdk/dk-medcom-carecommunication` branch `master`.
