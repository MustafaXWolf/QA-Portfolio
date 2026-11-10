# Project 2 – Realbugz "Registration Form"

In-depth testing of an expedition registration form with 12 fields, covering text inputs, dropdowns, radio buttons, a slider, file upload, and a checkbox. The testing combined **functional validation** with **client-side bypass tests** done through DevTools.

⬅️ [Back to portfolio](../README.md)

---

## 🎯 Objective

Verify the functionality, usability, and integrity of the form, and find defects in its validation rules and interactive elements.

## 🔎 Scope

| In scope | Out of scope |
|----------|--------------|
| All form fields and their validation rules | Direct backend / API testing |
| Interactive elements (Submit, Clear Form, tooltip) | Performance testing |
| Client-side validation bypass via DevTools (observed from the UI) | |

## 🧪 Approach

Smoke · Exploratory · Functional · Negative / security-like tests

**Environment:** Linux Mint (XFCE) · Brave 1.93.138 · Desktop

## 📄 Documents

| Document | Description |
|----------|-------------|
| [Test Plan](./test-plan.md) | Objective, scope, strategy, test data, entry and exit criteria |
| [Test Cases](./test-cases.md) | 17 test cases with results and linked bugs |
| [Bug Reports](./bug-reports.md) | 18 detailed bug reports with videos, DevTools evidence, and a summary table |

## 📊 Results

| Metric | Value |
|--------|:-----:|
| Test cases | 17 (2 passed, 15 failed) |
| Bugs reported | 18 |
| 🔴 High | 9 |
| 🟠 Medium | 6 |
| 🟡 Low | 3 |

## 🐛 Bugs by Category

**Validation rules not enforced**

| ID | Title | Severity |
|----|-------|:--------:|
| BUG-008 | Full Name accepts 1 character, 50+ characters, digits and symbols | Medium |
| BUG-009 | Email accepts addresses without a TLD and over 100 characters | Medium |
| BUG-010 | Date of Birth accepts ages under 18 and over 70 | Medium |
| BUG-016 | Passport/ID upload accepts wrong formats and files over 5 MB | **High** |
| BUG-017 | Additional Comments accepts more than 1000 characters | Medium |

**Client-side validation bypass (DevTools)**

| ID | Title | Severity |
|----|-------|:--------:|
| BUG-002 | Form submits with "Preferred Role" blank (missing `required`) | **High** |
| BUG-003 | Form submits after required fields are deleted from the DOM | **High** |
| BUG-018 | Form submits after the `required` attribute is removed | **High** |
| BUG-011 | Empty option accepted in "Archaeology Experience" | **High** |
| BUG-012 | Unlisted roles accepted in "Preferred Role" | **High** |
| BUG-013 | Unlisted regions and multi-select accepted in "Preferred Region" | **High** |
| BUG-014 | Slider min / increment wrong; tampered min / max accepted | **High** |
| BUG-015 | Wrong contact options; tampered values accepted | **High** |

**UX and feedback**

| ID | Title | Severity |
|----|-------|:--------:|
| BUG-001 | Three required fields missing the asterisk (\*) | Low |
| BUG-004 | "Terms and Conditions" tooltip does not appear | Medium |
| BUG-005 | Form is not cleared after successful submission | Low |
| BUG-006 | No error message next to the invalid field | Medium |
| BUG-007 | No success message after "Clear Form" | Low |

## 🔍 Key Takeaway

Most high-severity findings share one root cause: **the form trusts the browser**. Editing the HTML in DevTools was enough to submit data the UI should never allow, which suggests validation may be missing on the server side as well. This is the single most important fix.

## 💡 Lessons Learned

- Client-side checks are only a convenience. Testing with edited HTML shows whether the real validation exists.
- Separating severity from priority matters: bypasses on optional fields (BUG-014, BUG-015) are High severity but lower priority, and each report explains why.

## ➡️ What I'd Test Next

- Check server-side validation directly with an API tool such as Postman.
- Test the exact boundary values (2 and 50 characters, ages 18 and 70, a 5 MB file).
- Cross-browser testing and keyboard / screen-reader accessibility of the form.

## 🛠️ Tools Used

Brave DevTools (Elements editing, Console) · Screen recording · Boundary-value and negative testing techniques
