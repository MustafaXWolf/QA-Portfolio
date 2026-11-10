# Test Plan – Login Demo App

## Document Info
- **Application under test:** Login Demo page – https://sbecagol.com/test-apps/login-demo/ (Login Demo)
- **Tester:** [Mustafa Ragab]
- **Test dates:** [2026-10-05] to [2026-10-06]

## Objective
- Verify that the login flow works correctly and securely, handles invalid input gracefully, and stays usable across screen sizes, input methods, and devices.

## Scope
- Login with valid and invalid credentials (empty fields, whitespace, case sensitivity)
- Input handling (special characters, XSS / SQL injection / Unicode payloads, very long strings)
- Navigation and UI (Back button, theme toggle, "Forgot password?" and "Sign up" buttons)
- "Remember me" session persistence
- Keyboard accessibility (tab order, Enter key)
- Responsive layout on emulated and real devices

## Out of Scope
- Backend / authentication server internals
- Performance and load testing
- Brute-force protection and rate limiting
- Full penetration testing (only basic injection payloads are used)
- Screen-reader accessibility
- The registration and password-recovery flows themselves (the buttons are tested for navigation only)

## Test Strategy
- Functional
- Negative and boundary
- Security-minded input testing
- Keyboard accessibility
- Responsive and cross-device
- Exploratory

## Environment

| Platform | Details |
|----------|---------|
| Desktop | Linux Mint (XFCE) · Brave [confirm version] · DevTools Device Toolbar |
| Phone | Infinix Note 7 · Android 10 · Via 7.1.0 |
| Tablet | Samsung Galaxy Tab A 2016 · Android 8.1.0 · Via 7.3.3 |

## Test Data
- Valid credentials: `demo` / `password`
- Invalid credentials: `demo` / `wrongpassword`, `not_demo` / `password`
- Case variants: `Demo`, `Password`
- Whitespace: single space, leading/trailing and extra spaces
- Special characters: `demo#$%`
- Injection and Unicode payloads: `<script>alert("XSS")</script>`, `' OR '1'='1`, `😀ñü`, `"';--`
- Long strings: 257 characters

## Entry Criteria
- The Login Demo page is accessible.
- Valid credentials are known.

## Exit Criteria
- All planned test cases are executed.
- All critical and high severity bugs are identified and documented.

## Deliverables
- [Test cases](./test-cases.md)
- [Bug reports](./bug-reports.md)
