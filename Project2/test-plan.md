# Test Plan – Realbugz "Registration Form"

## Document Info
- **Application under test:** Realbugz – Expedition registration form – https://www.realbugz.com/en/task-form
- **Tester:** [Mustafa Ragab]
- **Test dates:** [2026-09-30]

## Objective
- Verify the functionality, usability, and integrity of the form page and identify defects.

## Scope
- Form content (text)
- All fields and their validation rules
- Interactive elements (buttons, tooltip)
- Client-side validation and its bypass through the browser DevTools (results are observed from the UI)

## Out of Scope
- Direct backend / API testing
- Performance testing

> **Note:** backend validation is not tested directly. Where tampered data is accepted after editing the HTML in DevTools, the bug is reported as observed in the UI. Those bugs indicate that server-side validation may also be missing.

## Test Strategy
- Smoke
- Exploratory
- Functional
- Negative / security-like tests (client-side validation bypass)

## Environment
- OS: Linux Mint Zena XFCE
- Browser: Brave (Version: 1.93.138)
- Device: Desktop

## Test Data
- Input interactions:
  - Text fields (Full Name, Email, Contact Number, Additional Comments)
  - Date input (Date of Birth)
  - Dropdown list (Archaeology Experience)
  - Multiple-selection list (Preferred Role in the Expedition)
  - Single-selection list (Preferred Expedition Region)
  - Range slider (Desired salary per week)
  - Radio buttons (Preferred Contact Method)
  - Upload field (Passport/ID)
  - Checkbox (I Agree to Terms and Conditions)
  - Submit Registration button
  - Clear Form button

## Entry Criteria
- The form page is accessible.
- Required fields are visible.

## Exit Criteria
- All critical and high severity bugs are identified and documented.
- The form may be submitted including at minimum the required fields.
- Form functionality is stable for basic usage.

## Deliverables
- [Test cases](./test-cases.md)
- [Bug reports](./bug-reports.md)
