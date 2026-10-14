# Weekly Sales Analysis V1 (Excel)

This exercise uses the same seven-day sales dataset as the SQL and Python projects.

## Workbook formulas

| Metric | Formula | Expected |
|---|---|---:|
| Total | `=SUM(B2:B8)` | 11900 |
| Average | `=AVERAGE(B2:B8)` | 1700 |
| Highest | `=MAX(B2:B8)` | 2500 |
| Lowest | `=MIN(B2:B8)` | 1100 |
| Days >= 2000 | `=COUNTIF(B2:B8,">=2000")` | 2 |

Add a clustered column chart with Day as the horizontal axis and Sales as the vertical axis. The Excel workbook is available as a conversation download; the binary `.xlsx` is **not yet committed to this repository**.
