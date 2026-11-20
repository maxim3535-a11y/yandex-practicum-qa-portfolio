# Test Environment — Yandex Routes

| Parameter | Recorded value |
|---|---|
| Application | Yandex Routes training web application |
| Test stand | https://qa-routes.praktikum-services.ru/ |
| Testing approach | Manual testing |
| Browser in test-case records | Google Chrome 141.0.7390.5–141.0.7390.26; 20 distinct patch versions occur |
| Browser in bug-report records | Google Chrome 141.0.7390.14 |

The source test-case workbook records multiple Chrome patch versions rather than one fixed browser build. This variation is retained as recorded and should be considered when reproducing defects.

The source materials do not specify the operating system, viewport/screen resolution, browser configuration, installed extensions, or application build/version. These values are intentionally left unspecified.

## Tested scope

- Validation of hours and minutes in the departure-time fields
- Validation of the “From” and “To” address fields
- Automatic insertion of leading zeroes for one-digit time values
- Trimming whitespace around addresses on blur
- Private-car route time and cost calculation using the supplied road-distance matrix and time-dependent average speed
