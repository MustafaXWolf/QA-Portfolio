# Traceability Matrix – Practice Software Testing (Toolshop)

This matrix links every requirement to its test cases, their results, and the bugs found. Every requirement has at least one test case, every failed test case has at least one bug, and every bug traces back to a requirement.

| Requirement | Area | Test cases | Results | Bugs |
|-------------|------|------------|---------|------|
| REQ-NAV-01 | Navigation | TC-001 | Fail ✘ | BUG-001 |
| REQ-NAV-02 | Navigation | TC-002 | Fail ✘ | BUG-002 |
| REQ-NAV-03 | Navigation | TC-003, TC-004 | Fail ✘ / Pass ✔ | BUG-003 |
| REQ-NAV-04 | Navigation | TC-005, TC-006, TC-007 | Fail ✘ | BUG-004, BUG-005, BUG-006 |
| REQ-CON-01 | Content | TC-008 | Fail ✘ | BUG-007 |
| REQ-CAT-01 | Catalog | TC-009 | Pass ✔ | — |
| REQ-CAT-02 | Catalog | TC-010, TC-011 | Fail ✘ / Pass ✔ | BUG-008 |
| REQ-CAT-03 | Catalog | TC-013 | Fail ✘ | BUG-010 |
| REQ-CAT-04 | Catalog | TC-015 | Fail ✘ | BUG-012 |
| REQ-CAT-05 | Catalog | TC-016 | Fail ✘ | BUG-013, BUG-014 |
| REQ-CAT-06 | Catalog | TC-018 | Fail ✘ | BUG-016 |
| REQ-CAT-07 | Catalog | TC-012 | Fail ✘ | BUG-009 |
| REQ-CAT-08 | Catalog | TC-014 | Fail ✘ | BUG-011 |
| REQ-CAT-09 | Catalog | TC-017 | Fail ✘ | BUG-015 |
| REQ-PRD-01 | Product details | TC-019 | Pass ✔ | — |
| REQ-PRD-02 | Product details | TC-020 | Fail ✘ | BUG-007, BUG-017 |
| REQ-CRT-01 | Cart and favourites | TC-021, TC-022 | Fail ✘ | BUG-018 |
| REQ-CRT-02 | Cart and favourites | TC-024, TC-025, TC-026 | Fail ✘ / Pass ✔ | BUG-021, BUG-022 |
| REQ-CRT-03 | Cart and favourites | TC-027 | Fail ✘ | BUG-023 |
| REQ-CRT-04 | Cart and favourites | TC-023 | Fail ✘ | BUG-019, BUG-020 |
| REQ-CRT-05 | Cart and favourites | TC-028 | Pass ✔ | — |
| REQ-ACC-01 | Account | TC-029, TC-030 | Fail ✘ / Pass ✔ | BUG-024 |
| REQ-ACC-02 | Account | TC-031 | Fail ✘ | BUG-025 |
| REQ-ACC-03 | Account | TC-032 | Fail ✘ | BUG-026 |
| REQ-ACC-04 | Account | TC-033, TC-034, TC-035 | Fail ✘ / Pass ✔ | BUG-027 |
| REQ-ACC-05 | Account | TC-049 | Fail ✘ | BUG-032 |
| REQ-ACC-06 | Account | TC-050 | Fail ✘ | BUG-033 |
| REQ-ACC-07 | Account | TC-051 | Fail ✘ | BUG-034 |
| REQ-ACC-08 | Account | TC-036, TC-037, TC-038, TC-039, TC-040, TC-044 | Pass ✔ | — |
| REQ-ACC-09 | Account | TC-042, TC-043 | Fail ✘ / Pass ✔ | BUG-028, BUG-029 |
| REQ-ACC-10 | Account | TC-041, TC-046, TC-047 | Pass ✔ | — |
| REQ-ACC-11 | Account | TC-045, TC-048 | Fail ✘ | BUG-030, BUG-031 |
| REQ-ACC-12 | Account | TC-052 | Fail ✘ | BUG-035 |
| REQ-CHK-01 | Checkout | TC-053 | Fail ✘ | BUG-036 |
| REQ-CHK-02 | Checkout | TC-054, TC-055 | Fail ✘ | BUG-037, BUG-038, BUG-039 |
| REQ-CHK-03 | Checkout | TC-056 | Fail ✘ | BUG-040 |
| REQ-CHK-04 | Checkout | TC-057 | Fail ✘ | BUG-041 |
| REQ-INV-01 | Invoices | TC-058 | Fail ✘ | BUG-041 |
| REQ-INV-02 | Invoices | TC-060 | Fail ✘ | BUG-042, BUG-043 |
| REQ-INV-03 | Invoices | TC-059 | Fail ✘ | BUG-043 |
| REQ-CNT-01 | Contact | TC-061, TC-062 | Fail ✘ / Pass ✔ | BUG-044 |
| REQ-CNT-02 | Contact | TC-063, TC-064 | Fail ✘ | BUG-045, BUG-046 |
| REQ-CNT-03 | Contact | TC-065 | Fail ✘ | BUG-047 |
| REQ-CHT-01 | Chat Assistant | TC-066, TC-067 | Pass ✔ | — |
| REQ-CHT-02 | Chat Assistant | TC-081 | Pass ✔ | — |
| REQ-CHT-03 | Chat Assistant | TC-068, TC-069 | Fail ✘ / Pass ✔ | BUG-048 |
| REQ-CHT-04 | Chat Assistant | TC-070, TC-071 | Fail ✘ | BUG-049, BUG-050 |
| REQ-CHT-05 | Chat Assistant | TC-072, TC-073, TC-074 | Fail ✘ / Pass ✔ | BUG-043, BUG-051 |
| REQ-CHT-06 | Chat Assistant | TC-075, TC-076, TC-077 | Fail ✘ / Pass ✔ | BUG-055 |
| REQ-CHT-07 | Chat Assistant | TC-078 | Pass ✔ | — |
| REQ-CHT-08 | Chat Assistant | TC-079, TC-080 | Pass ✔ | — |
| REQ-KBD-01 | Keyboard Accessibility | TC-082 | Fail ✘ | BUG-052 |
| REQ-KBD-02 | Keyboard Accessibility | TC-083 | Fail ✘ | BUG-053 |
| REQ-KBD-03 | Keyboard Accessibility | TC-084 | Fail ✘ | BUG-054 |

## Related documents
- [Requirements](./requirements.md)
- [Test cases](./test-cases.md)
- [Bug reports](./bug-reports.md)
