# Project 01 — Mesto Web Application Testing

## Project overview

Mesto is a training web application for working with a user profile and a gallery of place cards. Users can edit their profile information and interact with place cards: view photos, like places, and delete cards.

This project documents manual testing of the application. The materials include a profile-editing regression suite, bug reports covering profile and gallery functionality, and retest results for previously reported defects.

## Application and test environment

- **Application:** Mesto web application
- **Test stand:** [Mesto test stand](https://code.s3.yandex.net/qa/files/mesto/index.html)
- **Requirements:** [Mesto requirements](https://praktikum.notion.site/Mesto-9f2cfaa209734d1f8cfa0c0db3d3049f)
- **Browser recorded in the source workbooks:** Google Chrome 140.0.7339.128
- **Testing approach:** Manual testing

The source materials do not specify the operating system, viewport dimensions, browser configuration, or application build/version. These details are not inferred.

## Application areas represented in the test artifacts

### 1. Profile management

The 17 test cases in the regression workbook focus on the profile-editing form:
- Opening and closing the profile-editing form
- Displaying the current name and occupation in the form
- Updating profile name and occupation
- Minimum and maximum field-length validation
- Save button behavior for valid, invalid, and empty values
- Trimming whitespace on save
- Form layout checks

### 2. Places gallery

The bug-report and retest workbooks also cover the places gallery:
- Opening place photos and viewing place descriptions
- Liking place cards
- Deleting place cards
- Adding a new photo/card
- Displaying cards and scrolling the gallery
- Closing the opened card/photo view

**Scope clarification:** the 17-case regression suite is specifically about profile editing. It should not be interpreted as a full regression suite for the places gallery.

## Test results

| Artifact | Records | Recorded outcome |
|---|---:|---|
| Profile regression test cases | 17 | 7 Passed · 7 Failed · 3 Blocked |
| Bug reports | 10 | 10 Open in the submitted bug-report workbook |
| Retest records | 15 | 10 Closed · 2 Reopened · 3 Skipped |

### Key observations

- The profile regression run recorded failures involving profile data display and saving, as well as field-validation messages.
- Three profile test cases were marked Blocked in the source workbook.
- The bug-report set includes issues in both profile management and the places gallery.
- During retesting, two defects were marked Reopened because the issues remained unresolved.
- Three retests were marked Skipped because the required UI controls were unavailable on the test stand at the time of retesting.

These figures reflect the statuses recorded in the supplied workbooks. They are not a claim that every feature of the application was tested.

## Project files

| Folder | Contents |
|---|---|
| [Originals](./Originals/) | Copies of the submitted training workbooks; original content and language are preserved |
| [Improved](./Improved/) | Reorganized workbooks with consistent column names and a more readable tabular structure |
| [Documentation](./Documentation/) | Test-environment notes and scope details |

The improved retest workbook separates the originally recorded observed result from the later retest note, so the initial defect description is not confused with the retest conclusion.

The spreadsheets are in Russian because the original training assignment and source materials were in Russian. This project overview is in English.

## Skills demonstrated

Manual testing · Functional testing · Regression testing · Test case execution · Test documentation · Bug reporting · Defect lifecycle · Retesting · Defect verification
