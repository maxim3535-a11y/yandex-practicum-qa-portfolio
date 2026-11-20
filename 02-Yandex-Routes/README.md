# Project 02 — Yandex Routes: Field Validation and Car Route Calculation

## Project overview

This project documents manual testing of the Yandex Routes training stand. The assignment focused on two areas:

1. Validation of the departure-time and address fields.
2. Calculation of travel time and cost for a private car.

The source workbook originally contained four worksheets. They were separated into four independent Excel workbooks for easier review:

- **Test analysis:** decomposition of field validation and private-car calculations.
- **Equivalence classes and boundary values:** test partitions and selected boundary data.
- **Test cases:** 60 executed test cases.
- **Bug reports:** 16 recorded defects.

All four improved Excel workbooks and the original multi-sheet source workbook are committed directly to this repository. CSV previews are also provided for browser viewing.

## Application and test environment

- **Test stand:** [Yandex Routes](https://qa-routes.praktikum-services.ru/)
- **Requirements:** original requirements document, preserved in the source-materials archive; see [Originals](./Originals/README.md)
- **Testing approach:** manual testing
- **Browser recorded in test cases:** Google Chrome 141.0.7390.5–141.0.7390.26 (20 distinct patch versions occur in the source records)
- **Browser recorded in bug reports:** Google Chrome 141.0.7390.14

The source materials do not consistently identify one browser build for the whole test run. The operating system, viewport, browser configuration, and application build/version are not recorded.

## Scope

### Field validation

- Hours: integer values from 0 to 23; automatic leading zero for one-digit values.
- Minutes: integer values from 0 to 59; automatic leading zero for one-digit values.
- Origin and destination: only the seven addresses listed in the requirements; leading and trailing spaces are to be removed on blur.
- Validation is triggered when focus leaves a field.

### Private-car calculation

- Road distance is determined by the selected origin/destination pair.
- Private-car price is 20 RUB per kilometre.
- Average speed depends on departure time:
  - 00:01–08:00 — 45 km/h
  - 08:01–12:00 — 30 km/h
  - 12:01–18:00 — 40 km/h
  - 18:01–22:00 — 25 km/h
  - 22:01–00:00 — 45 km/h
- If a trip crosses more than one speed interval, the requirements say to use the speed for the interval in which the trip started.

The test set does not cover all 7 × 7 origin/destination combinations. It uses one same-address pair and one different-address pair for the car-calculation checks.

## Recorded results

| Artifact | Records | Recorded outcome |
|---|---:|---|
| Test cases | 60 | 35 Passed · 25 Failed |
| Bug reports | 16 | 16 Open |
| Bug priorities | 16 | 9 Critical · 7 Desirable |

The recorded results are retained from the source workbook. They are not a claim that every address pair, every interface mode, or every transport type was tested.

## Excel workbooks

| Workbook | Download |
|---|---|
| Test analysis | [XLSX](./Improved/Excel/Test-Analysis.xlsx) |
| Equivalence classes and boundary values | [XLSX](./Improved/Excel/Equivalence-Classes-Boundary-Values.xlsx) |
| Test cases | [XLSX](./Improved/Excel/Test-Cases.xlsx) |
| Bug reports | [XLSX](./Improved/Excel/Bug-Reports.xlsx) |
| Original multi-sheet workbook | [Original XLSX](./Originals/Excel/Yandex-Routes-Source-Workbook-Original.xlsx) |

## CSV browser previews

The CSV previews are placed directly in the Improved folder, so recruiters can open the tables in GitHub without downloading Excel files. The downloadable Excel workbooks are grouped in [Improved/Excel](./Improved/Excel/). The test-case index is a compact view with IDs, titles, execution statuses, and linked bug IDs; the full test steps and expected results are in the Excel workbook.

| Artifact | Browser preview |
|---|---|
| Test analysis | [View CSV](./Improved/Test-Analysis.csv) |
| Equivalence classes and boundary values | [View CSV](./Improved/Equivalence-Classes-Boundary-Values.csv) |
| Test-case index | [View CSV](./Improved/Test-Cases-Index.csv) |
| Bug reports | [View CSV](./Improved/Bug-Reports.csv) |

## Review notes

See [Test Analysis Notes](./Documentation/Test-Analysis-Notes.md) for scope limitations, gray areas, and source-level inconsistencies that should be clarified with an expert before treating them as definitive expected behavior.

## Source materials

The original multi-sheet workbook is committed in [Originals](./Originals/). The original requirements document is preserved in the source-materials archive; see [Originals README](./Originals/README.md) for the inventory.

## Skills demonstrated

Requirements analysis · Equivalence partitioning · Boundary value analysis · Manual testing · Field validation · Test case design and execution · Bug reporting · Calculation testing · Defect documentation
