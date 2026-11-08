# REVERSE_ENGINEERING_REPORT — dk-medcom-carecommunication

## A. General diagnosis

### Architecture identified
SUSHI-based FHIR Implementation Guide for Care Communication in Denmark (MedCom). Structure:

- `input/fsh/*.fsh`: 20 FSH files defining profiles, extensions, invariants and example instances
- `input/fsh/Helpers/`: helpers folder
- `ig.ini`: IG publisher configuration
- No `sushi-config.yaml` at root
- `.github/workflows/publish.yaml` and `.github/workflows/status-of-pr.yaml`: existing CI (discovered during audit)
- Resources published on simplifier.net and build.fhir.org

### Technologies and dependencies
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- Dependencies: MedCom Core, MedCom Messaging
- No automated tests

### Maintenance status
Default branch: master. Repository: https://github.com/medcomdk/dk-medcom-carecommunication. Active history with recent PRs (ex: PR #186 already merged).

### Existing test mechanisms
No automated tests found.

### Investigation limitations
- SUSHI not installed; IG build not executed.
- Issue #185 refers to UUID v4 validation (specific technical verification).

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-dkmedcom-001 | No sushi-config.yaml | P3 | CONFIRMED | repo root |
| REA-dkmedcom-002 | No automated tests for FSH/StructureDefinitions | P3 | CONFIRMED | repo root |
| REA-dkmedcom-003 | Issue #185: UUID v4 validation not implemented | P2 | PROVÁVEL | issue #185 |

### Confirmed problems details

**REA-dkmedcom-001 (P3, CONFIRMED):** No `sushi-config.yaml` at repository root. SUSHI configuration is not versioned in the repo.

**REA-dkmedcom-002 (P3, CONFIRMED):** No automated tests to validate FHIR profiles defined in FSH or generated StructureDefinitions.

### Probable problem details

**REA-dkmedcom-003 (P2, PROVÁVEL):** Issue #185 reports need for UUID v4 validation. Could not verify current implementation without access to specific files mentioned in the issue.

## C. Recurring problems
Issue #184 (clinical guidelines) reported on 02/11, still open. PR #186 (Vena_Vena.json) already closed and merged.

## D. Undocumented errors
All items in section B are previously undocumented problems.

## E. Performance
Static IG build via SUSHI. No performance-sensitive operations.

## F. Technical improvements
- Add sushi-config.yaml (REA-dkmedcom-001)
- Add FSH tests (REA-dkmedcom-002)
- Implement UUID v4 validation (REA-dkmedcom-003)

## G. Execution plan
All independent and low risk.

## H. Expected result
More complete IG, with versioned configuration, CI and automated tests.

**Tools used:** git, gh, PowerShell, static inspection.  
**Limitation:** SUSHI not installed. Issue #185 requires verification of specific code.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\dk-medcom-carecommunication` (clone of upstream, master branch).
