# Test Environment — Mesto

## Application

| Parameter | Recorded value |
|---|---|
| Application | Mesto web application |
| Purpose represented in the test materials | User profile management and a gallery of place cards |
| Test stand | https://code.s3.yandex.net/qa/files/mesto/index.html |
| Requirements | https://praktikum.notion.site/Mesto-9f2cfaa209734d1f8cfa0c0db3d3049f |
| Browser | Google Chrome 140.0.7339.128 |
| Testing approach | Manual testing |

## Tested areas represented in the workbooks

### Profile management — regression test cases

The 17 test cases in the regression workbook cover:
- Opening and closing the profile-editing form
- Displaying the current profile name and occupation in the form
- Saving updated name and occupation
- Minimum and maximum field-length validation
- Save button behavior for valid, invalid, and empty fields
- Trimming whitespace on save
- Form positioning on the page

Recorded results: 7 Passed, 7 Failed, 3 Blocked.

### Retest log — profile and places gallery

The separate retest workbook contains 15 records with IDs Б1–Б15 and covers both profile and gallery behavior. It is not a one-to-one continuation of the 10 profile-focused bug reports (ID_1–ID_10).

The bug-report workbook contains profile-related issues only. The retest log includes:
- Profile data display and update
- Profile form validation and Save button behavior
- Opening and closing the profile-editing form
- Place photo display and place description
- Likes and deletion of place cards
- Adding photos/cards
- Gallery scrolling

The retest workbook contains 15 records: 10 Closed, 2 Reopened, and 3 Skipped.

## Environment limitations

The source workbooks record the test stand URL and browser version. They do not specify:
- Operating system
- Viewport or screen resolution
- Browser configuration or installed extensions
- Application build/version

These values are intentionally left unspecified rather than inferred.
