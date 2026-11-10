# Test Cases – Realbugz "Registration Form"

| Total | Passed ✔ | Failed ✘ |
|:-----:|:--------:|:--------:|
| 17 | 2 | 15 |

---

## TC-001: Check if all required fields are marked with an asterisk (*)

### Steps:
1. Scroll down to every required field (**Full Name, Email, Contact Number, Date of Birth, Archaeology Experience, Preferred Role in the Expedition, Preferred Expedition Region, Upload Passport/ID, I Agree to Terms and Conditions**).
2. Check if every field of them has the asterisk (*) sign next to its title.

### Expected:
All of the named fields should have the sign next to its title.

### Actual Result:
- Archaeology Experience, Preferred Role in the Expedition, and Preferred Expedition Region have no asterisk (*) next to their titles.

### Status:
- Fail ✘

### Related Bug:
- BUG-001

---------------------------------

## TC-002: Try submitting the form when not all required fields are filled, or when at least one of them is left blank

### Steps:
1. Skip all of required fields, or at least leave one of them blank.
2. Scroll down and fill only the optional fields.
3. Try to submit the form by clicking on the "**Submit Registration**" button.
4. Try deleting all required fields by modifying HTML structure using the DevTools Elements. "**Type: Negative / Security-like test**"

### Expected:
- An error message should appear next to the field that was left blank.
- In case step 4 is achievable, the form should not be able to be submitted.

### Actual Result:
- The form can be submitted with the Preferred Role field left blank (the `required` attribute is missing).
- The form can be submitted after the required fields are deleted through DevTools Elements.
- No error message appears next to the field.

### Status:
- Fail ✘

### Related Bugs:
- BUG-002
- BUG-003
- BUG-006

---------------------------------

## TC-003: Check if the words "Terms and Conditions" are interactive

### Steps:
1. Scroll down to the very end of the page till you see the phrase "**I Agree to Terms and Conditions**".
2. Try hovering over the words "**Terms and Conditions**".

### Expected:
Hovering over them should display a tooltip explaining how the user's submitted data will be used.

### Actual Result:
- Nothing is displayed when hovering over "Terms and Conditions".

### Status:
- Fail ✘

### Related Bug:
- BUG-004

---------------------------------

## TC-004: Clickable and effective buttons (Submit Registration, Clear Form)

### Steps:
1. Scroll down to the very end of the page till you see the two buttons (**Submit Registration, Clear Form**).
2. Try clicking on each one of them.

### Expected:
- By clicking on the "**Submit Registration**" button a success message should be displayed and the form should be cleared automatically if all required fields were filled out with valid data and the form was successfully submitted. Otherwise, an error message should appear next to the field where the error occurred.
- By clicking on the "**Clear Form**" button a success message should be displayed and the form should be cleared automatically.

### Actual Result:
- After a successful submission the form is not cleared automatically.
- No error message appears next to the field that caused the error.
- "Clear Form" clears the fields, but no success message is displayed.

### Status:
- Fail ✘

### Related Bugs:
- BUG-005
- BUG-006
- BUG-007

---------------------------------

## TC-005: Full Name "required field"

### Description:
- User must be allowed to enter his full name.
- Allowed length from 2 to 50 characters.
- Latin and Cyrillic alphabet letters, spaces, hyphens, and apostrophes are allowed.
- Digits and special characters (except hyphens and apostrophes) are not permitted.
- Field cannot be empty.

### Steps:
1. Try entering any Full Name.
2. Try entering fewer than 2 characters once, and more than 50 characters another time.
3. Try entering strange inputs like emojis for instance.
4. Try leaving the field empty.

### Expected:
An error message should appear next to the field if tried to submit after doing any of these steps.

### Actual Result:
- The form is submitted with 1 character, with more than 50 characters, and with digits and special characters.

### Status:
- Fail ✘

### Related Bug:
- BUG-008

---------------------------------

## TC-006: Email "required field"

### Description:
- Allowed email format (e.g., test@example.com).
- Maximum length: 100 characters.
- Field cannot be empty.

### Steps:
1. Try entering wrong email format.
2. Try entering more than 100 characters.
3. Try leaving the field empty.

### Expected:
An error message should appear next to the field if tried to submit after doing any of these steps.

### Actual Result:
- The form is submitted with an email without a top-level domain (e.g., foo@bar) and with more than 100 characters.

### Status:
- Fail ✘

### Related Bug:
- BUG-009

---------------------------------

## TC-007: Contact Number "required field"

### Description:
- Only digits, "+", "-", and spaces are allowed.
- Maximum length: 15 characters.
- Field cannot be empty.

### Steps:
1. Try entering wrong email format, like entering unsupported special characters "#, $, &, etc...".
2. Try entering more than 15 characters.
3. Try leaving the field empty.

### Expected:
An error message should appear next to the field if tried to submit after doing any of these steps.

### Actual Result:
- No defects found; no bug was raised for this field.

### Status:
- Pass ✔

---------------------------------

## TC-008: Date of Birth "required field"

### Description:
- Date format: DD/MM/YYYY.
- The user must be older than 18 and younger than 70 years as of the current date.
- Field cannot be empty.

### Steps:
1. Test the age limits by choosing a date of birth that makes the user older than 70 as of today, and another that makes the user younger than 18 as of today.
2. Try leaving the field empty.

### Expected:
An error message should appear next to the field if tried to submit after doing any of these steps.

### Actual Result:
- The form is submitted with a date of birth indicating an age over 70 and under 18.

### Status:
- Fail ✘

### Related Bug:
- BUG-010

---------------------------------

## TC-009: Archaeology Experience "required field"

### Description:
- Dropdown list with "No experience" selected by default.

### Steps:
1. Check if the selected by default value is actually "**No experience**".
2. By modifying HTML structure using the DevTools Elements:
   1. Try submitting the form while leaving the field empty.

### Expected:
- The default value is actually "No experience".
- An error message should appear next to the field if step number 2 was actually achievable.

### Actual Result:
- After an empty option is added through DevTools Elements, the form is submitted without an error message.

### Status:
- Fail ✘

### Related Bug:
- BUG-011

---------------------------------

## TC-010: Preferred Role in the Expedition "required field"

### Description:
- Available options: Researcher, Photographer, Drone Operator, Cartographer, Medic, Logistician.
- Multiple selections allowed.

### Steps:
1. Check whether the available options include the correct data.
2. Check whether multiple selection is permitted as stated or not.
3. Try leaving the field empty.
4. By modifying HTML structure using the DevTools Elements:
   1. Try replacing the options values.
   2. Try adding more options.

### Expected:
- The correct data are included.
- Multiple selection is permitted.
- An error message should appear next to the field if step number 3 was actually achievable.
- The steps included in Step number 4 are not achievable, and if, an error message should appear next to the field.

### Actual Result:
- The form is submitted with the field blank.
- New roles can be added and existing ones replaced through DevTools Elements, and the form is submitted without an error message.

### Status:
- Fail ✘

### Related Bugs:
- BUG-002
- BUG-012

---------------------------------

## TC-011: Preferred Expedition Region "required field"

### Description:
- Available options: South America, Africa, Asia, Europe, Australia.
- Only one option can be selected.

### Steps:
1. Check whether the available options include the correct data.
2. Check whether only one option can be selected as stated or multiple selections are allowed.
3. By modifying HTML structure using the DevTools Elements:
   1. Try replacing the options values.
   2. Try adding more options.
   3. Try edit the code the make multiple selections allowed.

### Expected:
- The correct data are included.
- Multiple selection is unavailable.
- The steps included in Step number 3 are not achievable, and if, an error message should appear next to the field.

### Actual Result:
- New regions can be added, existing ones replaced, and multiple selections enabled through DevTools Elements, and the form is submitted without an error message.

### Status:
- Fail ✘

### Related Bug:
- BUG-013

---------------------------------

## TC-012: Select your desired salary per week ($) "slider, optional field"

### Description:
- Minimum value: $0
- Maximum value: $1700
- Increment step: $10
- Default value: $700

### Steps:
1. Check whether the values are correct.
2. Check if the increment step is flawless.
3. Try changing the slider maximum and minimum values by modifying HTML structure using the DevTools Elements.

### Expected:
- The values are correct.
- The increment step is flawless.
- Step number 3 is not achievable, and if, the form should not be submitted.

### Actual Result:
- The slider minimum value and increment step are incorrect.
- After changing the min and max values through DevTools Elements, the form is submitted without an error message.

### Status:
- Fail ✘

### Related Bug:
- BUG-014

---------------------------------

## TC-013: Preferred Contact Method "radio buttons, optional field"

### Description:
- Available options: Email, Phone, WhatsApp, SMS.
- Only one option can be selected.

### Steps:
1. Check whether the available options include the correct data.
2. Check whether only one option can be selected as stated or multiple selections are allowed.
3. By modifying HTML structure using the DevTools Elements:
   1. Try replacing the options values.
   2. Try adding more options.
   3. Try edit the code to make multiple selections allowed.

### Expected:
- The correct data are included.
- Multiple selection is unavailable.
- The steps included in Step number 3 are not achievable, and if, the form should not be submitted.

### Actual Result:
- The contact options contain a wrong value.
- After adding or replacing options, or enabling multiple selections through DevTools Elements, the form is submitted without an error message.

### Status:
- Fail ✘

### Related Bug:
- BUG-015

---------------------------------

## TC-014: Upload Passport/ID "required file upload field"

### Description:
- Accepted formats: JPG, PNG, PDF.
- Maximum file size: 5 MB.
- Field cannot be empty.

### Steps:
1. Try uploading wrong format.
2. Try uploading a file that's bigger than 5 MB.
3. Try leaving the field empty.
4. By modifying HTML structure using the DevTools Elements:
   - Try adding more accepted formats.
   - Try expanding maximum file size so the form can accept more than 5 MB files.

### Expected:
An error message should appear next to the field if tried to submit after doing any of these steps.

### Actual Result:
- The form is submitted with a wrong file format and with a file larger than 5 MB, and no error message appears.

### Status:
- Fail ✘

### Related Bug:
- BUG-016

---------------------------------

## TC-015: Additional Comments "optional text field"

### Description:
- Maximum length: 1000 characters.
- All characters are permitted.

### Steps:
1. Try entering more than 1000 characters.

### Expected:
- The user cannot enter more than 1000 characters.

### Actual Result:
- More than 1000 characters are accepted, and the form is submitted.

### Status:
- Fail ✘

### Related Bug:
- BUG-017

---------------------------------

## TC-016: I Agree to Terms and Conditions "required checkbox"

### Description:
- Must be checked before submitting the form.
- If unchecked, the form submission should be prevented, and the user must see a notification requesting agreement to the terms.

### Steps:
1. Try submitting the form without checking it.

### Expected:
- The user cannot submit the form without checking it.

### Actual Result:
- No defects found; no bug was raised for this checkbox.

### Status:
- Pass ✔

---------------------------------

## TC-017: Try leaving the required fields empty by deleting the "required" tag using the DevTools Elements.

### Description:
Use the DevTools Elements to edit the html code to make the form can be submitted without filling out the required fields by deleting the "**required**" tag.

### Steps:
1. Open the DevTools in your browser.
2. Go to the fields section inside the html code.
3. Find the "**required**" tag and delete it in every required field by editing the html code.
4. Try submitting the form.

### Expected:
The form cannot be submitted, and an error message should appear.

### Actual Result:
- The form is submitted without filling the required fields after the `required` attribute is removed through DevTools Elements.

### Status:
- Fail ✘

### Related Bug:
- BUG-018
