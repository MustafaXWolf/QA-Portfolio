# Test Summary Report – Practice Software Testing (Toolshop)

**Tester:** Mustafa Ragab · **Period:** October 2026 · **Main build:** Sprint 5 (with bugs) · **Comparison build:** Sprint 5 (clean)

## 1. Recommendation: ❌ NO-GO

The application is **not ready for release.** 3 Critical and 7 High severity defects remain open. The most serious ones are a **SQL injection that bypasses the login**, two password flows that **lock users out of their accounts**, and a checkout that **creates no invoice**.

## 2. What was tested
Navigation, content, catalog, product details, cart and favourites, account, login security, checkout, invoices, contact, Chat Assistant, and keyboard accessibility. Out of scope: admin area, API, performance, full security audit, cross-browser, and mobile (see the [test plan](./test-plan.md)).

## 3. Results

| Metric | Value |
|--------|:-----:|
| Requirements | 54 (all covered by at least one test case) |
| Test cases executed | 84 |
| ✔ Passed | 30 |
| ✘ Failed | 54 |
| Bugs reported | 55 |

### Bugs by severity

| Severity | Count |
|----------|:-----:|
| Critical | 3 |
| High | 7 |
| Medium | 32 |
| Low | 13 |

### Bugs by area

| Area | Bugs |
|------|:----:|
| Navigation | 6 |
| Content | 1 |
| Catalog | 9 |
| Product details | 1 |
| Cart and favourites | 6 |
| Account | 12 |
| Checkout | 5 |
| Invoices | 2 |
| Contact | 4 |
| Chat Assistant | 6 |
| Keyboard Accessibility | 3 |

### Bugs by build
- Only on the with-bugs build: 38
- Also on the clean build (pre-existing): 12
- Partly on the clean build: 1
- Clean build only: 4

## 4. Critical and High severity defects

| Bug | Problem | Severity / Priority |
|-----|---------|:-------------------:|
| [BUG-022](./bug-reports.md#bug-022-line-totals-in-the-cart-show-0000) | Line totals show $00.00 | High / High |
| [BUG-028](./bug-reports.md#bug-028-sql-injection-payload-in-the-email-field-bypasses-the-login) | SQL injection bypasses the login | Critical / High |
| [BUG-029](./bug-reports.md#bug-029-server-returns-500-internal-server-error-when-submitting-sql-injection-style-payload----in-login-email-field) | 500 error on a login payload | High / High |
| [BUG-032](./bug-reports.md#bug-032-update-profile-returns-resource-not-found) | Update Profile fails | High / High |
| [BUG-033](./bug-reports.md#bug-033-changing-the-password-while-logged-in-locks-the-user-out) | Password change locks the user out | Critical / High |
| [BUG-034](./bug-reports.md#bug-034-resetting-a-forgotten-password-locks-the-user-out) | Forgot password locks the user out | Critical / High |
| [BUG-041](./bug-reports.md#bug-041-normal-purchase-creates-no-invoice-and-shows-no-invoice-number) | No invoice after a normal purchase | High / High |
| [BUG-043](./bug-reports.md#bug-043-purchasing-through-chat-assistant-encountered-an-error-on-the-clean-sprint-5) | Chat purchase fails (clean) | High / High |
| [BUG-047](./bug-reports.md#bug-047-message-details-button-opens-the-most-recent-message-instead-of-the-selected-one) | Message details open the latest message | High / Medium |
| [BUG-055](./bug-reports.md#bug-055-chat-assistant-search-returns-products-for-injection-style-payloads-on-the-with-bugs-build) | Chat search returns products for injection payloads | High / High |

## 5. What works
- Registration with valid data, and login with valid and invalid credentials
- Rejection of empty, whitespace-only, and very long login input, and case-sensitive passwords
- Product list, keyword search, and the product page
- Adding products to the cart and favourites (despite the error message), and removing favourites
- Moving through the checkout steps and completing a purchase
- Chat Assistant: opening and closing, unknown products, empty and very long messages, script payloads, response time, and prices that match the cart
- Contact messages without an attachment

## 6. Findings worth highlighting
- **Security:** the login accepts a SQL injection payload ([BUG-028](./bug-reports.md#bug-028-sql-injection-payload-in-the-email-field-bypasses-the-login)), and another payload makes the server return a 500 error ([BUG-029](./bug-reports.md#bug-029-server-returns-500-internal-server-error-when-submitting-sql-injection-style-payload----in-login-email-field)).
- **Chat search:** two injection-style payloads return products on the with-bugs build, but not on the clean build ([BUG-055](./bug-reports.md#bug-055-chat-assistant-search-returns-products-for-injection-style-payloads-on-the-with-bugs-build)).
- **Account recovery:** both password flows set a password the user never chose ([BUG-033](./bug-reports.md#bug-033-changing-the-password-while-logged-in-locks-the-user-out), [BUG-034](./bug-reports.md#bug-034-resetting-a-forgotten-password-locks-the-user-out)).
- **Purchases:** wrong line totals ([BUG-022](./bug-reports.md#bug-022-line-totals-in-the-cart-show-0000)), payment fields required for Cash on Delivery ([BUG-040](./bug-reports.md#bug-040-account-name-and-number-are-required-for-every-payment-method)), and no invoice for normal purchases ([BUG-041](./bug-reports.md#bug-041-normal-purchase-creates-no-invoice-and-shows-no-invoice-number)).
- **Pre-existing defects:** 12 defects also occur on the clean build, so they are not caused by the injected bugs.

## 7. Risks and limitations
- The application has no formal specification, so some expected results are assumptions (see the [requirements](./requirements.md)).
- Desktop only, one browser. No API, performance, or full security testing.
- The chat search injection finding ([BUG-055](./bug-reports.md#bug-055-chat-assistant-search-returns-products-for-injection-style-payloads-on-the-with-bugs-build)) was reported but not investigated further, so the data that could be exposed is unknown.

## 8. Next steps
1. Fix the Critical and High severity defects first, then re-test.
2. Run a full regression of login, cart, checkout, and invoices after the fixes.
3. Test the same flows through the API (manual API testing project).

## 9. Exit criteria status

| Criterion | Status |
|-----------|:------:|
| Every test case executed | ✅ Met |
| All Critical and High severity bugs fixed or with a workaround | ❌ Not met |
| Checkout flow works end to end | ❌ Not met (no invoice, payment step) |
