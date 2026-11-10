# Test Cases – Login Demo App

| Total | Passed ✔ | Failed ✘ |
|:-----:|:--------:|:--------:|
| 22 | 17 | 5 |

---

## TC-001: Successful login with valid credentials

### Preconditions:
- User is on the Login page.
- Valid credentials are known: **demo** / **password**.

### Test Data:
- Username: **demo**
- Password: **password**

### Steps:
1. Enter **demo** in the Username field.
2. Enter **password** in the Password field.
3. Click the "**Log in**" button.

### Expected:
- User is redirected to the Dashboard/Home page.
- A success message or user-specific content confirms successful login.

### Actual Result:
- User is redirected to the Dashboard/Home page.
- A success message confirms successful login has appeared.

### Status:
- Pass ✔

---------------------------------

## TC-002: Login with invalid password

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: **demo**
- Password: **wrongpassword**

### Steps:
1. Enter **demo** in the Username field.
2. Enter **wrongpassword** in the Password field.
3. Click the "**Log in**" button.

### Expected Result:
- User remains on the Login page.
- An error message is displayed (e.g., "Invalid username or password").
- The Password field is cleared (security best practice).

### Actual Result:
- User remains on the Login page.
- An error message is displayed ("Invalid username or password").
- The Password field is cleared.

### Status:
- Pass ✔

---------------------------------

## TC-003: Login with invalid username

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: **not_demo**
- Password: **password**

### Steps:
1. Enter **not_demo** in the Username field.
2. Enter **password** in the Password field.
3. Click the "**Log in**" button.

### Expected Result:
- User remains on the Login page.
- An error message is displayed (e.g., "Invalid username or password").

### Actual Result:
- User remains on the Login page.
- An error message is displayed ("Invalid username or password").

### Status:
- Pass ✔

---------------------------------

## TC-004: Empty Username field

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: (empty)
- Password: **password**

### Steps:
1. Leave the Username field empty.
2. Enter **password** in the Password field.
3. Click the "**Log in**" button.

### Expected Result:
- Form does not submit.
- Validation message appears (e.g., "Username is required").
- User remains on the Login page.

### Actual Result:
- Form does not submit.
- A notification message appears next to the field ("**Please fill out this field**").
- Validation message appears ("**Invalid username or password**").
- User remains on the Login page.

### Status:
- Pass ✔

---------------------------------

## TC-005: Empty Password field

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: **demo**
- Password: (empty)

### Steps:
1. Enter **demo** in the Username field.
2. Leave the Password field empty.
3. Click the "**Log in**" button.

### Expected Result:
- Form does not submit.
- Validation message appears (e.g., "Password is required").
- User remains on the Login page.

### Actual Result:
- Form does not submit.
- A notification message appears next to the field ("**Please fill out this field**").
- Validation message appears ("**Invalid username or password**").
- User remains on the Login page.

### Status:
- Pass ✔

---------------------------------

## TC-006: Both fields empty

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: (empty)
- Password: (empty)

### Steps:
1. Leave both Username and Password fields empty.
2. Click the "**Log in**" button.

### Expected Result:
- Form does not submit.
- Validation messages appear for both fields.
- User remains on the Login page.

### Actual Result:
- Form does not submit.
- A notification message appears next to the "Username" field ("**Please fill out this field**").
- Validation message appears ("**Invalid username or password**").
- User remains on the Login page.

### Status:
- Pass ✔

---------------------------------

## TC-007: Whitespace-only input

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: (single space)
- Password: (single space)

### Steps:
1. Enter a single space in the Username field.
2. Enter a single space in the Password field.
3. Click the "**Log in**" button.

### Expected Result:
- Depends on the app. Either:
   - Form does not submit, with a validation message.
   - OR Form submits and produces the same Invalid username or password error as normal invalid input.

### Actual Result:
- Form does submit.
- Validation message appears ("**Invalid username or password**").
- User remains on the Login page.

### Status:
- Pass ✔

---------------------------------

## TC-008: Valid username, valid password with extra whitespace

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: **demo**
- Password: **password** with extra **whitespace**

### Steps:
1. Enter **demo** in the Username field.
2. Enter **password** with extra **whitespace** in the Password field.
3. Click the "**Log in**" button.

### Expected Result:
- User remains on the Login page.
- An error message is displayed (e.g., "Invalid username or password").
- The Password field is cleared (security best practice).

### Actual Result:
- User remains on the Login page.
- An error message is displayed ("Invalid username or password").
- The Password field is cleared.

### Status:
- Pass ✔

---------------------------------

## TC-009: Valid username with leading/trailing whitespace, valid password

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: **demo** with **leading/trailing whitespace**
- Password: **password**

### Steps:
1. Enter **demo** with **leading/trailing whitespace** in the Username field.
2. Enter **password** in the Password field.
3. Click the "**Log in**" button.

### Expected Result:
- Two possible valid behaviors:
   - Option A (Trimming): The app trims whitespace and logs the user in successfully.
   - Option B (No Trimming): The app treats " demo " as invalid and shows an error message.

### Actual Result:
- Option A (Trimming) has been achieved, the app trimmed whitespace and logged the user in successfully.

### Status:
- Pass ✔

---------------------------------

## TC-010: Special characters combined with valid credentials in the username

### Preconditions:
- User is on the Login Demo page.
- Valid password is known.

### Test Data:
- Username: **demo#$%**
- Password: **password**

### Steps:
1. Enter **demo#$%** in the Username field.
2. Enter **password** in the Password field.
3. Click the "**Log in**" button.

### Expected Result:
- Form submits without crashing or hanging.
- Standard "Invalid username or password" error appears.
- No UI corruption (fields don't disappear, layout doesn't break).
- No JavaScript errors in DevTools console.

### Actual Result:
- Form has been submitted without crashing or hanging.
- Standard "Invalid username or password" error has appeared.
- No UI corruption (fields didn't disappear, layout didn't break).
- No JavaScript errors in DevTools console.

### Status:
- Pass ✔

---------------------------------

## TC-011: Injection & Unicode stress test

### Preconditions:
- User is on the Login Demo page.
- DevTools Console tab is open (to catch JS errors).

### Test Data:
**Run each of these sequentially as separate attempts:**

| Attempt |        Username Payload             |  Category         |
|---------|-------------------------------------|-------------------|
| 1	      | ```<script>alert("XSS")</script>``` |  XSS              |
| 2	      |         ' OR '1'='1	                |  SQLi             |
| 3	      |         😀ñü	                    |  Unicode/Emoji    |
| 4	      |         "';--	                    |  Quotes/Escaping  |

### Steps:
- For each attempt above: clear fields → enter payload in Username → enter **password** in Password → click Log In → observe result → repeat for next payload.

### Expected Result:
- Every attempt produces the standard invalid credentials error.
- No alert boxes pop up (XSS success = critical bug).
- No blank screens, infinite loading, or corrupted UI.
- Unicode renders correctly in the field (not as `` or garbled text).

### Actual Result:
- Attempt 1: PASS – "Invalid username or password" displayed; no alert box; Console clean.
- Attempt 2: PASS – "Invalid username or password" displayed; Console clean.
- Attempt 3: PASS – Unicode rendered correctly as 😀ñü; standard error shown.
- Attempt 4: PASS – Standard error shown; no UI corruption.

### Status:
- Pass ✔

---------------------------------

## TC-012: Very long strings in username and password fields

### Preconditions:
- User is on the Login Demo page.
- A text string of 257+ characters is prepared.

### Test Data:
- Username: `A` × 257 characters
- Password: `B` × 257 characters

### Steps:
0. Enter this code "**```copy("A".repeat(257))```**" in DevTools console to copy the 257 characters instantly.
1. Enter the 257-character string in the Username field.
2. Enter the 257-character string in the Password field.
3. Click the **Log In** button.

### Expected Result:
- Form rejects input with validation message OR truncates visibly without UI breakage.
- No layout corruption, crashes, blank screens, or unhandled server errors.
- Standard invalid credentials error appears if submission proceeds.

### Actual Result:
- Form has been submitted without crashing or hanging.
- Standard "Invalid username or password" error has appeared.
- No layout corruption, crashes, blank screens, or unhandled server errors.

### Status:
- Pass ✔

---------------------------------

## TC-013: Username case sensitivity (Demo vs demo)

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: **Demo**
- Password: **password**

### Steps:
1. Enter **Demo** in the Username field.
2. Enter **password** in the Password field.
3. Click the **Log In** button.

### Expected Result:
- User remains on the Login page.
- An error message is displayed (e.g., "Invalid username or password").

### Actual Result:
- User remains on the Login page.
- An error message is displayed ("Invalid username or password").
- The Password field is cleared.

### Status:
- Pass ✔

---------------------------------

## TC-014: Password case sensitivity (Password vs password)

### Preconditions:
- User is on the Login Demo page.

### Test Data:
- Username: **demo**
- Password: **Password**

### Steps:
1. Enter **demo** in the Username field.
2. Enter **Password** in the Password field.
3. Click the **Log In** button.

### Expected Result:
- User remains on the Login page.
- An error message is displayed (e.g., "Invalid username or password").
- The Password field is cleared (security best practice).

### Actual Result:
- User remains on the Login page.
- An error message is displayed ("Invalid username or password").
- The Password field is cleared.

### Status:
- Pass ✔

---------------------------------

## TC-015: Back button navigation

### Preconditions:
- User navigated to the Login Demo page from another page (e.g., https://sbecagol.com/test-apps/).

### Steps:
- Click the "**← Back**" button.

### Expected Result:
- User is redirected to the previously visited page ([sbecagol.com/test-apps/](https://sbecagol.com/test-apps/)).
- The previous page loads correctly without errors.

### Actual Result:
- User is redirected to the previously visited page ([sbecagol.com/test-apps/](https://sbecagol.com/test-apps/)).
- The previous page loads correctly without errors.

### Status:
- Pass ✔

---------------------------------

## TC-016: Theme toggle (Dark/Light mode)

### Preconditions:
- User is on the Login Demo page.
- Page is on the light or dark mode.

### Steps:
- Click the switch button, you'll find it shaped like a crescent moon if the page was on the light mode, and you'll find it shaped like a sun if the opposite is the case.

### Expected Result:
- Page switches from light to dark mode, and vice versa.
- Icon changes from crescent moon to sun, and vice versa.
- Clicking again reverses both changes.

### Actual Result:
- Page switches from light to dark mode, and vice versa.
- Icon changes from crescent moon to sun, and vice versa.
- Clicking again reverses both changes.

### Status:
- Pass ✔

---------------------------------

## TC-017: Forgot Password button navigation

### Preconditions:
- User is on the Login Demo page.
- User forgot his password.

### Steps:
- Click the "**Forgot password?**" button.

### Expected Result:
- User is redirected to another page where he can change his password and restore his account.

### Actual Result:
- User is not redirected to another page where he can change his password and restore his account.

### Status:
- Fail ✘

### Related Bug:
- BUG-001

---------------------------------

## TC-018: Sign Up button navigation

### Preconditions:
- User is on the Login Demo page.
- User does not have an account.

### Steps:
1. Navigate to the very end of the page till you can see the "**Don't have an account?**" phrase.
2. Click the "**Sign up**" button.

### Expected Result:
- User is redirected to another page where he can register for the first time and get an account.

### Actual Result:
- User is not redirected to another page where he can register for the first time and get an account.

### Status:
- Fail ✘

### Related Bug:
- BUG-002

---------------------------------

## TC-019: Remember Me checkbox behavior

### Preconditions:
- User is on the Login Demo page.
- Valid credentials are known: **demo** / **password**.

### Test Data:
- Username: **demo**
- Password: **password**

### Steps:
1. Check the "**Remember me**" checkbox.
2. Enter **demo** in the Username field.
3. Enter **password** in the Password field.
4. Click the "**Log In**" button.
5. Wait for successful login.
6. Close the browser completely.
7. Reopen the browser and navigate to the Login Demo page.

### Expected Result:
- The user is automatically logged in, or at least the username field is pre-filled.
- A persistent cookie or session token (with an expiry date) is stored in the browser.
- The password is never pre-filled or stored in plain text.

### Actual Result:
- The username field is not pre-filled.
- The user is not automatically logged in.
- No cookie or session token has been stored in the browser.

### Status:
- Fail ✘

### Related Bug:
- BUG-003

---------------------------------

## TC-020: Keyboard tab order through the form

### Preconditions:
- User is on the Login Demo page.
- No fields are currently focused (click outside the form or press Esc to reset focus).
- The "Tab" key on the keyboard is not broken.

### Steps:
1. Click outside the form (or press Esc) to ensure no field is focused.
2. Press the Tab key repeatedly, observing where focus lands after each press.
3. Note the sequence of focused elements.
4. Once at the last element, press Shift+Tab to verify reverse navigation works.

### Expected Result:
- Focus moves in logical visual order: Back → Theme toggle → Username → Password → Remember me checkbox → Forgot password? link → Log In button → Sign up link.
- Each focused element displays a visible focus indicator (outline/highlight).
- No interactive element is skipped; no non-interactive element receives focus.
- Shift+Tab reverses the sequence correctly.

### Actual Result:
- Focus skips "**Remember me checkbox**" without focusing on it.
- Each focused element displays a visible focus indicator (outline/highlight) except "**Remember me checkbox**".
- One interactive element is skipped "**Remember me checkbox**"; no non-interactive element receives focus.
- Shift+Tab reverses the sequence correctly.

### Status:
- Fail ✘

### Related Bug:
- BUG-004

---------------------------------

## TC-021: Enter key submits the form

### Preconditions:
- User is on the Login Demo page.
- Valid credentials are known: **demo** / **password**.

### Test Data:
- Username: **demo**
- Password: **password**

### Steps:
1. Enter **demo** in the Username field.
2. Enter **password** in the Password field.
3. Press the Enter key while focused in the Password field.


### Expected Result:
- Form submits immediately, identical to clicking the Log In button.
- User is logged in successfully.

### Actual Result:
- Form submits immediately, identical to clicking the Log In button.
- User is logged in successfully.

### Status:
- Pass ✔

---------------------------------

## TC-022: Responsive layout on different screen sizes

### Preconditions:
- DevTools Device Toolbar is open OR real devices (phone/tablet) are available.

### Steps:
1. In DevTools, toggle Device Toolbar.
2. Resize the viewport to different dimensions (Width and Height) and observe the layout.
3. Rotate viewport to landscape mode at mobile dimensions and observe the layout.
4. If real devices are available, observe the layout on a phone and tablet at their native resolutions on both modes, the regular mode, and the landscape mode.

### Expected Result:
- The form remains fully visible and usable at all screen sizes.
- No horizontal scrolling occurs.
- All interactive elements (fields, buttons, links) are fully visible and accessible.
- Touch targets (on mobile/tablet) are at least 44x44 pixels and easily tappable.
- Text and spacing adapt appropriately without overlapping or being cut off.
- Dark/Light mode toggle and all buttons remain functional at all resolutions.
- Error messages (if present) are fully visible and do not overlap other elements.

### Actual Result:
- The form remains fully visible and usable at all screen sizes in the DevTools using the toggle device toolbar tool.
- No horizontal scrolling occurs.
- All interactive elements (fields, buttons, links) are fully visible and accessible.
- Touch targets (on mobile/tablet) are at least 44x44 pixels and easily tappable.
- Text and spacing adapt appropriately without overlapping or being cut off.
- Dark/Light mode toggle and all buttons remain functional at all resolutions in the DevTools using the toggle device toolbar tool.
- Error messages (if present) are fully visible and do not overlap other elements.
- **When tested on "Via Browser" (Devices: Infinix Note 7, Samsung Galaxy Tab A 2016), clicking the Dark/Light mode toggle changed the theme to dark charcoal instead of light on the Infinix device, and it stayed on dark charcoal in both cases on the Samsung device, while the browser settings were on the Night mode on both devices**.
- After conducting comprehensive functional and exploratory tests, no further issues occurred.

### Status:
- Fail ✘

### Related Bug:
- BUG-005
