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

The four separated Excel workbooks and the original source workbook are available in the project package. Two improved Excel files are now also stored directly in this repository; the other two improved workbooks and the original source workbook remain in the package while their direct binary uploads are completed. CSV previews are provided below for browser viewing.

## Application and test environment

- **Test stand:** [Yandex Routes](https://qa-routes.praktikum-services.ru/)
- **Requirements:** original requirements document, included in the source-materials archive
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
| Equivalence classes and boundary values | [XLSX](./Improved/Equivalence-Classes-Boundary-Values.xlsx) |
| Bug reports | [XLSX](./Improved/Bug-Reports.xlsx) |
| Test analysis | Included in the project package; direct repository upload pending |
| Test cases | Included in the project package; direct repository upload pending |
| Original multi-sheet workbook | Included in the project package; direct repository upload pending |

## CSV browser previews

The CSV previews show the worksheet data directly in GitHub. The test-case index is a compact view with IDs, titles, execution statuses, and linked bug IDs; the full test steps and expected results are in the Excel workbook in the project package.

| Artifact | Browser preview |
|---|---|
| Test analysis | [View CSV](./Improved/CSV-Preview/Test-Analysis.csv) |
| Equivalence classes and boundary values | [View CSV](./Improved/CSV-Preview/Equivalence-Classes-Boundary-Values.csv) |
| Test-case index | [View CSV](./Improved/CSV-Preview/Test-Cases-Index.csv) |
| Bug reports | [View CSV](./Improved/CSV-Preview/Bug-Reports.csv) |

## Review notes

See [Test Analysis Notes](./Documentation/Test-Analysis-Notes.md) for scope limitations, gray areas, and source-level inconsistencies that should be clarified with an expert before treating them as definitive expected behavior.

## Source materials and Excel workbooks

The original multi-sheet workbook and requirements document are preserved in the downloadable project package. See [Originals](./Originals/README.md) and [Improved](./Improved/README.md) for the file inventory and current repository download status.

## Skills demonstrated

Requirements analysis · Equivalence partitioning · Boundary value analysis · Manual testing · Field validation · Test case design and execution · Bug reporting · Calculation testing · Defect documentation
