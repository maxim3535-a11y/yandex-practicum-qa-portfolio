# Test Analysis Notes — Yandex Routes

## Source-backed rules

The requirements document describes validation on blur (when focus leaves the field).

| Field / logic | Source-backed rule |
|---|---|
| Hours | 24-hour format; integer from 0 to 23 inclusive; automatic leading zero for one-digit values; invalid input shows “Вы ввели некорректное время” and a red field outline |
| Minutes | Integer input; automatic leading zero for one-digit values; invalid input shows “Вы ввели некорректное время” and a red field outline |
| Origin / destination | Only the seven fixed addresses are allowed; leading and trailing spaces are removed on blur; invalid input shows “Вы ввели некорректный адрес” and a red field outline |
| Private-car speed | 45 / 30 / 40 / 25 / 45 km/h for the five departure-time intervals listed in the project README |
| Private-car cost | 20 RUB per kilometre |
| Speed interval crossing | The speed is selected from the interval in which the trip started |

The workbook's test-analysis sheet expresses travel time in minutes as `t = (S / V) × 60`. The requirements document gives `t = S / V` without specifying the output unit. Since `V` is in km/h, multiplying by 60 converts hours to minutes. This unit interpretation should be confirmed if the expected display unit is not minutes.

## Gray areas and clarifications to obtain

The source workbook itself marks address case handling and rounding as gray areas. Additional ambiguities are visible when the requirements and executed tests are compared.

1. **Empty fields.** The interface starts with empty time and address fields, but the requirements do not explicitly state whether an empty field must be treated as invalid after blur. The test cases expect an error for empty hours, minutes, origin, and destination.
2. **Address letter case.** The requirements list exact address strings but do not define case sensitivity. The test cases for lower-case address input (T44 and T50) are marked Passed, but that observed behavior is not stated as a formal requirement.
3. **Rounding.** The worksheet contains a gray-zone note that the final result is rounded up to the next integer (for example, 2.1 → 3). The requirements document does not specify rounding, nor whether this rule applies to duration, price, or both. The price calculations in the submitted execution set do not isolate fractional-price rounding.
4. **Time formula and units.** The requirements document states `t = S / V`; the analysis worksheet uses `(S / V) × 60` and labels the result in minutes. Confirm the intended unit and conversion explicitly.
5. **Midnight boundary.** The speed matrix ends one interval at `00:00` (`22:01–00:00`) and starts the next interval at `00:01`. Confirm that `00:00` belongs to the last interval of the previous day.
6. **Direction-dependent road distance.** The supplied road-distance matrix is not symmetric. For example, Комсомольский проспект, 18 → Хамовнический Вал, 34 is 2.3 km, while the reverse direction is 3.7 km. The document does not explain whether this direction dependence is intentional (for example, because of one-way roads or route selection).
7. **Leading zero input.** The requirements say the system inserts zero before a one-digit value. The workbook separately tests manually entered leading zeroes, but the requirements do not explicitly state whether the user may enter the leading zero manually as well.

## Coverage limitations

- The test-case set contains 60 cases: T1–T54 cover field validation; T55–T60 cover private-car calculations.
- Only one same-address pair and one different-address pair are used for the calculation cases. The tests do not cover every combination in the 7 × 7 road-distance matrix.
- Address-entry classes use one representative valid address in each field, not all seven valid addresses.
- Five calculation cases use the same non-zero route and exercise the five departure-time speed intervals. The same-address test checks the zero-distance case.
- The task scope did not call for full verification of the “Optimal” and “Fast” modes or the other transport types; these are not claimed as covered.

## Recorded execution snapshot

- Test cases: 35 Passed, 25 Failed.
- Bug reports: 16 Open (9 Critical, 7 Desirable).
- BUG1 / BUG4 and BUG5 / BUG6 overlap in their triggering one-digit-time scenarios. Review whether these are distinct defects or one underlying validation/formatting defect with two symptoms before consolidating them.
- BUG15 and BUG16 report the time and price discrepancies observed for the same route scenario. They are separate reported output fields and are retained as separate records.

These notes distinguish source requirements, observations recorded in the workbook, and questions that still require expert clarification. No answers to the gray-area questions were present in the supplied materials.
