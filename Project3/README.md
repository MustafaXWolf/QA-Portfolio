# Project 3 – Login Demo App

End-to-end testing of a login page, covering authentication logic, input handling, security payloads, keyboard accessibility, and responsive behaviour on real devices.

⬅️ [Back to portfolio](../README.md)

---

## 🎯 Objective

Verify that the login flow works correctly and securely, handles bad input gracefully, and stays usable across screen sizes, input methods, and devices.

## 🧪 Approach

Functional · Negative · Boundary · Security-minded (XSS / SQLi / Unicode) · Keyboard accessibility · Responsive and cross-device

**Environments**

| Platform | Details |
|----------|---------|
| Desktop | Linux Mint (XFCE) · Brave · DevTools Device Toolbar |
| Phone | Infinix Note 7 · Android 10 · Via 7.1.0 |
| Tablet | Samsung Galaxy Tab A 2016 · Android 8.1.0 · Via 7.3.3 |

## 📄 Documents

| Document | Description |
|----------|-------------|
| [Test Plan](./test-plan.md) | Objective, scope, strategy, environment, test data, entry and exit criteria |
| [Test Cases](./test-cases.md) | 22 test cases with preconditions, test data, expected and actual results, and status |
| [Bug Reports](./bug-reports.md) | 5 detailed bug reports with videos, DevTools evidence, and a summary table |

## 📊 Results

| Metric | Value |
|--------|:-----:|
| Test cases executed | 22 |
| ✔ Passed | 17 |
| ✘ Failed | 5 |
| Bugs reported | 5 (4 Medium, 1 Low) |

## ✅ What Was Covered

| Area | Test cases |
|------|-----------|
| Valid and invalid login | TC-001 – TC-003, TC-013, TC-014 |
| Empty fields | TC-004 – TC-006 |
| Whitespace handling | TC-007 – TC-009 |
| Special characters, XSS, SQLi, Unicode | TC-010, TC-011 |
| Very long input (257 chars) | TC-012 |
| Navigation and UI (Back, theme toggle, Enter key) | TC-015, TC-016, TC-021 |
| Links and buttons | TC-017, TC-018 |
| Session persistence ("Remember me") | TC-019 |
| Keyboard accessibility | TC-020 |
| Responsive and real devices | TC-022 |

## 🐛 Bugs Found

| ID | Title | Severity | Priority |
|----|-------|:--------:|:--------:|
| BUG-001 | "Forgot password?" button does nothing | Medium | Medium |
| BUG-002 | "Sign up" button does nothing | Medium | Medium |
| BUG-003 | "Remember me" does not persist the session (no cookie or token) | Medium | Medium |
| BUG-004 | Tab key skips the "Remember me" checkbox | Low | Low |
| BUG-005 | Theme toggle shows wrong colors in Via Night Mode (phone and tablet) | Medium | Medium |

## 🔍 Highlights

- **Security inputs handled well:** the XSS, SQLi, and Unicode payloads produced no alerts, no console errors, and no UI corruption.
- **Real-device testing:** BUG-005 appeared only on physical devices in Via's Night Mode, and DevTools emulation did not reproduce it.
- **Accessibility:** BUG-004 means keyboard-only users cannot reach the "Remember me" checkbox.

## 💡 Lessons Learned

- Emulators miss device- and browser-specific problems, so testing on real hardware found a bug that DevTools could not.
- Expected results should describe good practice, not only visible behaviour. For example, "Remember me" should never pre-fill a password.

## ➡️ What I'd Test Next

- Re-test the theme toggle in other mobile browsers (Chrome, Firefox) to confirm whether BUG-005 is specific to Via.
- Check brute-force protection, account lockout, and session timeout.
- Test with a screen reader.

## 🛠️ Tools Used

Brave DevTools (Console, Application / Storage, Device Toolbar) · Real Android devices · Screen recording
