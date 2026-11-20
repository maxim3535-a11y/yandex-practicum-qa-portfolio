# Improved workbooks

The CSV previews are placed directly in this folder so they can be opened and read in GitHub without downloading. The downloadable Excel workbooks are grouped in the [Excel](./Excel/) subfolder. GitHub's web file viewer does not render .xlsx workbooks as interactive tables: use the Excel links to download them and open them in Excel or Google Sheets.

For a quick browser preview, use the CSV exports below. They preserve table values and text, but not Excel formatting or workbook-level features.

| Artifact | Excel workbook | Browser preview |
|---|---|---|
| Profile regression test cases | [Mesto-Test-Cases-IMPROVED.xlsx](./Excel/Mesto-Test-Cases-IMPROVED.xlsx) | [CSV preview](./Mesto-Test-Cases-IMPROVED-DATA.csv) |
| Bug reports | [Mesto-Bug-Reports-IMPROVED.xlsx](./Excel/Mesto-Bug-Reports-IMPROVED.xlsx) | [CSV preview](./Mesto-Bug-Reports-IMPROVED-DATA.csv) |
| Retest results | [Mesto-Retest-Results-IMPROVED.xlsx](./Excel/Mesto-Retest-Results-IMPROVED.xlsx) | [CSV preview](./Mesto-Retest-Results-IMPROVED-DATA.csv) |

The recorded test outcomes, defect statuses, and retest conclusions are retained from the submitted materials. The current CSV previews contain the latest readability corrections: test-case IDs are whole numbers, profile-form preconditions are in the Preconditions column, and the bug-report CSV has a separate Evidence reference column preserving screenshot filenames from the source workbook. The referenced image files were not supplied and are not included in this repository.

**Workbook synchronization note:** the latest CSV corrections have been committed, but the two downloadable Excel files (test cases and bug reports) in this repository are still at the previous binary revision. The corrected Excel files were validated separately and are provided with the project review as `Mesto-IMPROVED-CORRECTED-WORKBOOKS.zip`; replace the two files in the [Excel](./Excel/) subfolder with the files from that archive to make the downloads identical to the CSV previews. The retest workbook did not require changes.
