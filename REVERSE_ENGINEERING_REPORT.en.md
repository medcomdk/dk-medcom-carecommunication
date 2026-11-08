# REVERSE_ENGINEERING_REPORT — dk-medcom-carecommunication

## A. General diagnosis

### Architecture identified
SUSHI-based FHIR Implementation Guide for Care Communication in Denmark (MedCom). Structure:

- `input/fsh/*.fsh`: 20 FSH files defining profiles, extensions, invariants and example instances
- `input/fsh/Helpers/`: helpers folder
- `sushi-config.yaml`: SUSHI configuration at root (id: medcom.fhir.dk.carecommunication, version 5.0.4, FHIR R4)
- `ig.ini`: IG publisher configuration
- `.github/workflows/publish.yaml` and `.github/workflows/status-of-pr.yaml`: existing CI (discovered during audit)
- Resources published on simplifier.net and build.fhir.org

### Technologies and dependencies
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- Dependencies: hl7.fhir.dk.core 3.4.0, medcom.fhir.dk.core 3.0.1, medcom.fhir.dk.messaging 4.0.2, medcom.fhir.dk.terminology 2.0.1, medcom.fhir.dk.messagedefinitions 1.0.0
- No automated tests

### Maintenance status
Default branch: master. Repository: https://github.com/medcomdk/dk-medcom-carecommunication. Active history with recent PRs (ex: PR #186 already merged, PR #189 open for UUID v4 invariant correction).

### Existing test mechanisms
No automated tests found.

### Investigation limitations
- SUSHI not installed; IG build not executed.
- Issue #185 refers to UUID v4 validation; PR #189 open for invariant correction.

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-dkmedcom-002 | No automated tests for FSH/StructureDefinitions | P3 | CONFIRMED | repo root |
| REA-dkmedcom-003 | Issue #185: UUID v4 validation not implemented | P2 | PROVÁVEL | issue #185, PR #189 open |

### Confirmed problems details

**REA-dkmedcom-002 (P3, CONFIRMED):** No automated tests to validate FHIR profiles defined in FSH or generated StructureDefinitions.

### Probable problem details

**REA-dkmedcom-003 (P2, PROVÁVEL):** Issue #185 reports need for UUID v4 validation. PR #189 has been opened correcting the regex in `input/fsh/MedComCareCommunicationAttachmentID.fsh` to properly restrict UUID version 4 and variant 8/9/a/b.

## C. Recurring problems
Issue #184 (clinical guidelines) reported on 02/11, still open. PR #186 (Vena_Vena.json) already closed and merged.

## D. Undocumented errors
All items in section B are previously undocumented problems.

## E. Performance
Static IG build via SUSHI. No performance-sensitive operations.

## F. Technical improvements
- Add FSH tests (REA-dkmedcom-002)
- Review and merge PR #189 for UUID v4 invariant correction (REA-dkmedcom-003)

## G. Execution plan
All independent and low risk.

## H. Expected result
IG with automated tests and UUID v4 invariant correctly validated.

**Tools used:** git, gh, PowerShell, static inspection.  
**Limitation:** SUSHI not installed. Issue #185/PR #189 requires verification of FSH compilation.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\dk-medcom-carecommunication` (clone of upstream, master branch).
