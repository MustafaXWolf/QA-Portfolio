# Test Plan – Practice Software Testing (Toolshop)

## Document Info
- **Application under test:** Practice Software Testing – Toolshop (an e-commerce practice application)
- **Builds tested:**

| Build | Address | Role |
|-------|---------|------|
| Sprint 5 (with bugs) | https://with-bugs.practicesoftwaretesting.com | Main test target |
| Sprint 5 (clean) | https://practicesoftwaretesting.com | Comparison build |

- **Tester:** Mustafa Ragab
- **Testing period:** October 2026

## Objective
- Run a complete QA cycle on a realistic e-commerce application: analyse the requirements, plan, design and execute tests, report defects, and give a release recommendation.

## Scope
- Navigation and global UI, including browser Back behaviour
- Content (spelling of the user-facing text)
- Catalog: product list, search, sorting, filters, categories, ads
- Product details page
- Cart and favourites
- Account: registration, login, profile update, change password, forgot password
- Login security-minded input testing (SQL injection, script, and Unicode payloads)
- Checkout: billing address, payment, purchase confirmation
- Invoices, including purchases made through the Chat Assistant
- Contact form, attachment, and "My messages"
- Chat Assistant
- Keyboard accessibility (tab order, focus indicators, keyboard activation)

## Out of Scope
- Administration area
- API testing (planned as a separate portfolio project)
- Performance and load testing
- A full security audit or penetration test (only basic injection payloads on the login and the chat)
- Accessibility beyond keyboard navigation (screen readers, colour contrast)
- Automation
- Cross-browser and mobile testing (planned as a separate portfolio project)
- Sprints 1 to 4 and the "holtesting" build

## Test Approach
1. **Smoke, exploratory and security-minded testing** on the with-bugs build, to find defects and map the features.
2. **Requirements analysis** from the observed behaviour (see [requirements](./requirements.md)).
3. **Scripted test cases** for every requirement, including negative and boundary cases (see [test cases](./test-cases.md)).
4. **Comparison with the clean build.** Every defect is re-checked on clean Sprint 5. The clean build is a comparison point, not a source of truth, because it can contain defects too. Each bug report records whether it reproduces on the clean build.
5. **Defect reporting** with steps, expected and actual results, evidence, severity, and priority (see [bug reports](./bug-reports.md)).
6. **Traceability** from requirement to test case to bug (see [traceability matrix](./traceability-matrix.md)).
7. **Test summary report** with a go/no-go recommendation (see [summary](./test-summary-report.md)).

## Defect Classification

| Severity | Meaning |
|----------|---------|
| Critical | A security breach, data loss, or the user is locked out, with no workaround |
| High | A core flow is broken or shows wrong data, and there is no easy workaround |
| Medium | A feature is impaired, a workaround exists, or the behaviour is misleading |
| Low | Cosmetic or minor issue |

| Priority | Meaning |
|----------|---------|
| High | Fix before release |
| Medium | Fix in the next release |
| Low | Fix when time allows |

Severity measures the impact on the user. Priority measures how urgent the fix is. Where the two differ, the bug report explains why.

Defect status values: Open, Fixed, Verified, Closed, Rejected.

## Environment
- OS: Linux Mint Zena (XFCE)
- Browser: Brave 1.93.138
- Device: Desktop

## Test Data
- One test account per build, created with fake data (the public application may reset its data)
- Date of birth with the year 1940 (age-limit test)
- Files for the attachment test: an empty .txt, a 1 KB .txt, a .txt of about 600 KB, a .pdf, and a .jpg
- Login payloads: `<script>alert("XSS")</script>`, `' OR '1'='1`, `😀ñü`, `';--`
- Long strings of 257 characters (login) and of 1000 and 100000 characters (chat)

## Risks and Assumptions
- There is no formal specification, so some expected results are assumptions (see [requirements](./requirements.md)).
- The public application is shared and may change or reset without notice.
- The with-bugs build contains bugs that were added on purpose, so the findings describe a practice application, not production software.

## Entry Criteria
- Both builds are reachable.
- A test account exists on each build.

## Exit Criteria
- Every test case is executed.
- All Critical and High severity bugs are fixed or have an accepted workaround.
- The checkout flow works end to end.

## Deliverables
- [Requirements analysis](./requirements.md)
- [Test cases](./test-cases.md)
- [Traceability matrix](./traceability-matrix.md)
- [Bug reports](./bug-reports.md)
- [Test summary report](./test-summary-report.md)
