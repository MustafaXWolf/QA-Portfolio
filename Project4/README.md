# Project 4 (Flagship) – Full QA Cycle: Practice Software Testing (Toolshop)

A complete manual QA cycle on a realistic e-commerce application, from requirements analysis to a go/no-go recommendation. I tested the **with-bugs Sprint 5** build and compared every finding with the **clean Sprint 5** build.

⬅️ [Back to portfolio](../README.md)

---

## 🎯 Objective
Show the full testing process, not only bug finding: analyse requirements, plan, design and run tests, report defects, trace everything, and make a release recommendation.

## 📄 Documents

| Document | Description |
|----------|-------------|
| [Requirements](./requirements.md) | 54 requirements, each with its source (stated, observed, or assumed) |
| [Test Plan](./test-plan.md) | Scope, approach, severity and priority definitions, environment, entry and exit criteria |
| [Test Cases](./test-cases.md) | 84 test cases across 11 feature areas |
| [Bug Reports](./bug-reports.md) | 55 bug reports with a summary table and video and DevTools evidence |
| [Traceability Matrix](./traceability-matrix.md) | Requirement → test case → bug |
| [Test Summary Report](./test-summary-report.md) | Results, critical defects, and the go/no-go recommendation |

## 📊 Results

| Metric | Value |
|--------|:-----:|
| Requirements | 54 |
| Test cases | 84 (30 passed, 54 failed) |
| Bugs reported | 55 |
| 🔴 Critical | 3 |
| 🟠 High | 7 |
| 🟡 Medium | 32 |
| ⚪ Low | 13 |
| Also reproduce on the clean build | 12 |
| **Recommendation** | **❌ No-Go** |

## 🐛 Critical and High Severity Bugs

| ID | Title | Severity | Priority |
|----|-------|:--------:|:--------:|
| [BUG-028](./bug-reports.md#bug-028-sql-injection-payload-in-the-email-field-bypasses-the-login) | SQL injection bypasses the login | Critical | High |
| [BUG-033](./bug-reports.md#bug-033-changing-the-password-while-logged-in-locks-the-user-out) | Password change locks the user out | Critical | High |
| [BUG-034](./bug-reports.md#bug-034-resetting-a-forgotten-password-locks-the-user-out) | Forgot password locks the user out | Critical | High |
| [BUG-022](./bug-reports.md#bug-022-line-totals-in-the-cart-show-0000) | Line totals show $00.00 | High | High |
| [BUG-029](./bug-reports.md#bug-029-server-returns-500-internal-server-error-when-submitting-sql-injection-style-payload----in-login-email-field) | 500 error on a login payload | High | High |
| [BUG-032](./bug-reports.md#bug-032-update-profile-returns-resource-not-found) | Update Profile fails | High | High |
| [BUG-041](./bug-reports.md#bug-041-normal-purchase-creates-no-invoice-and-shows-no-invoice-number) | No invoice after a normal purchase | High | High |
| [BUG-043](./bug-reports.md#bug-043-purchasing-through-chat-assistant-encountered-an-error-on-the-clean-sprint-5) | Chat purchase fails (clean) | High | High |
| [BUG-047](./bug-reports.md#bug-047-message-details-button-opens-the-most-recent-message-instead-of-the-selected-one) | Message details open the latest message | High | Medium |
| [BUG-055](./bug-reports.md#bug-055-chat-assistant-search-returns-products-for-injection-style-payloads-on-the-with-bugs-build) | Chat search returns products for injection payloads | High | High |

All 55 bugs are listed in the [bug report summary](./bug-reports.md#summary).

## 🔍 Highlights
- **Security findings:** a SQL injection payload in the email field logs the user in without valid credentials (BUG-028), another payload makes the server return a 500 error (BUG-029), and the chat search returns products for injection-style input (BUG-055).
- **Account lock-out:** both password flows set a password the user never chose (BUG-033, BUG-034).
- **Two-build comparison:** the clean build is a comparison point, not the truth. 12 defects also occur there, and 4 exist only there.
- **Severity vs priority:** where they differ, the bug report explains why.
- **Keyboard accessibility:** tab order, focus indicators, and keyboard activation were tested separately.

## 💡 Lessons Learned
- The same behaviour on two builds does not make it correct, so every bug records whether it reproduces on the clean build.
- Requirements written from observation need a source, because assumptions look like facts otherwise.
- One bug per defect keeps triage simple, and a shared test case keeps the links clear.

## ➡️ What I'd Test Next
- Test the same flows through the API (my manual API testing project).
- Investigate the Chat Assistant search injection finding (BUG-055) further.
- Re-test after fixes and run a regression of login, cart, checkout, and invoices.

## 🛠️ Tools Used
Brave DevTools (Elements, Console, Network) · Keyboard-only navigation · Screen recording · Markdown
