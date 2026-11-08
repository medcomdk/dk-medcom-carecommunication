# CORRECTIONS.md — dk-medcom-carecommunication

Project: medcomdk/dk-medcom-carecommunication
Base branch analyzed: master
Destination fork: https://github.com/admeduardovieira/dk-medcom-carecommunication

## Corrections proposed

| ID | Title | Severity | Status | Risk | Files involved |
|----|-------|----------|--------|------|----------------|
| REA-dkmedcom-002 | No automated tests for FSH/StructureDefinitions | P3 | PROPOSING | Medium | `test/` (new) |
| REA-dkmedcom-003 | Issue #185: UUID v4 validation not implemented | P2 | PROPOSING | Low | `input/fsh/MedComCareCommunicationAttachmentID.fsh` |

## Details of proposed corrections

### REA-dkmedcom-002 — No automated tests
**Problem:** No tests validate FSH profiles.
**Fix:** Add FSH validation tests.
**Validation:** Run tests; confirm profiles compile.

### REA-dkmedcom-003 — UUID v4 validation (Issue #185)
**Problem:** Issue #185 requests UUID v4 validation. PR #189 has been opened correcting the regex in `input/fsh/MedComCareCommunicationAttachmentID.fsh` to properly restrict UUID version 4 and variant 8/9/a/b.
**Fix:** Review and merge PR #189; verify FSH compilation and profile validation.
**Validation:** Confirm UUID v4 values pass FSH validation; confirm non-v4 UUIDs are rejected.

## Not implemented
None implemented in this execution; proposals for maintainers.

## Publication plan
- Fork: `admeduardovieira/dk-medcom-carecommunication` (already exists).
- No code changes (only audit reports).
- Commit identity: `admeduardovieira <admeduardovieira@users.noreply.github.com>`.
- PR to `medcomdk/dk-medcom-carecommunication` branch `master`.
