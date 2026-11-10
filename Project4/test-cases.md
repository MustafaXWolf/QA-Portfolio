# Test Cases – Practice Software Testing (Toolshop)

Test cases were executed on the with-bugs Sprint 5 build, with the clean build used for comparison (see the [test plan](./test-plan.md)). Where the two builds behave differently, the actual result lists both.

## Results at a Glance

| Total | Passed ✔ | Failed ✘ |
|:-----:|:--------:|:--------:|
| 84 | 30 | 54 |

| Area | Test cases | Passed ✔ | Failed ✘ |
|------|:----------:|:--------:|:--------:|
| Navigation | 7 | 1 | 6 |
| Content | 1 | 0 | 1 |
| Catalog | 10 | 2 | 8 |
| Product details | 2 | 1 | 1 |
| Cart and favourites | 8 | 2 | 6 |
| Account | 24 | 13 | 11 |
| Checkout | 5 | 0 | 5 |
| Invoices | 3 | 0 | 3 |
| Contact | 5 | 1 | 4 |
| Chat Assistant | 16 | 10 | 6 |
| Keyboard Accessibility | 3 | 0 | 3 |

---

## Navigation

### TC-001: Logo is visible and links to the home page

- **Requirement:** REQ-NAV-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-001](./bug-reports.md#bug-001-application-logo-is-not-visible-but-still-clickable)

#### Steps
1. Open the home page.
2. Look at the logo area in the header.
3. Click the logo area.

#### Expected
The logo is visible, and clicking it opens the home page.

#### Actual
The logo is not visible, but clicking its area opens the home page.

---

### TC-002: Navigation bar highlights the current page

- **Requirement:** REQ-NAV-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-002](./bug-reports.md#bug-002-home-tab-stays-active-on-every-page)

#### Steps
1. Open the home page.
2. Click another navigation item, for example Contact.
3. Check which tab is highlighted.

#### Expected
The tab of the current page is highlighted.

#### Actual
Home stays highlighted on every page.

---

### TC-003: Home tab opens the home page

- **Requirement:** REQ-NAV-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-003](./bug-reports.md#bug-003-home-tab-opens-the-contact-page)

#### Steps
1. Open any page other than the home page.
2. Click Home in the navigation bar.

#### Expected
The home page opens.

#### Actual
The Contact page opens.

---

### TC-004: Contact tab opens the contact page

- **Requirement:** REQ-NAV-03  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Click Contact in the navigation bar.

#### Expected
The contact page opens.

#### Actual
The contact page opens.

---

### TC-005: Verify Back Navigation from Ad Detail Preserves Search Results

- **Requirement:** REQ-NAV-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-004](./bug-reports.md#bug-004-browser-back-from-a-product-page-loses-the-search-results-and-returns-to-the-home-page)

#### Steps
1. Enter a search query (e.g., "bolts").
2. Click on an ad result to view the product details.
3. Click the browser/app "Back" button.

#### Expected
User is returned to the Search Results page.

#### Actual
User is not returned to the Search Results page, instead, they're being redirected to the home page, and all the search results are lost.

---

### TC-006: Verify back navigation from ad detail preserves current ads page

- **Requirement:** REQ-NAV-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-005](./bug-reports.md#bug-005-browser-back-from-a-product-page-on-ads-page-2-or-3-returns-to-the-home-page-instead-of-the-same-ads-page)

#### Steps
1. Open the Home page.
2. Navigate to the next ads page.
3. Click on one of the ads in this page.

#### Expected
User is returned to the current page, and not redirected to the home page.

#### Actual
User is not returned to the current page, and instead, they're actually redirected to the home page.

---

### TC-007: Verify selected filters persist when navigating back from product detail

- **Requirement:** REQ-NAV-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-006](./bug-reports.md#bug-006-browser-back-from-a-product-page-resets-all-selected-filters)

#### Steps
1. Apply category filter (e.g., "Power Tools > Grinder").
2. Apply brand filter (e.g., "Brand name 3").
3. Click a product/ad to view details.
4. Click the browser/app "Back" button.

#### Expected
Search results page loads with all previously selected filters still checked and results intact.

#### Actual
- Redirects to Home.
- All filters reset.
- Search results lost.

---------------------------------

## Content


## Content

### TC-008: UI text is spelled correctly

- **Requirement:** REQ-CON-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-007](./bug-reports.md#bug-007-spelling-errors-in-the-ui-contakt-sorth-reltded-products)

#### Steps
1. Review the text throughout the application
2. Examine the tabs, buttons, and all other parts of the application.

#### Expected
All labels are spelled correctly.

#### Actual
- **"Contakt"** in the navigation bar.
- **"Sorth"** on the sorting control.
- **"Reltded products"** on the product page.

---------------------------------

## Catalog


## Catalog

### TC-009: Product list shows products

- **Requirement:** REQ-CAT-01  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the home page.
2. Review the product list.

#### Expected
Products are shown.

#### Actual
Products are shown.

---

### TC-010: Search returns matching products

- **Requirement:** REQ-CAT-02  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Enter a product name in the search field.
2. Submit the search.

#### Expected
Matching products are listed.

#### Actual
Matching products are listed.

---

### TC-011: Search icon is visible

- **Requirement:** REQ-CAT-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-008](./bug-reports.md#bug-008-search-icon-magnifying-glass-is-not-visible)

#### Steps
1. Open the home page.
2. Look at the search field.

#### Expected
A magnifying-glass icon is visible.

#### Actual
The icon is broken and not visible.

---

### TC-012: Verify Ad Layout Stability During Search Input

- **Requirement:** REQ-CAT-07  |  **Status:** Fail ✘  |  **Related bug:** [BUG-009](./bug-reports.md#bug-009-entering-characters-in-search-field-makes-ad-titles-jump-leftright-consistently-per-keystroke)

#### Steps
1. Open the home page.
2. Go to the search field.
3. Enter anything in the field.
4. Watch ad layout stability during search input.

#### Expected
Ad layout remains stable while typing.

#### Actual
Ad titles jump left/right consistently per keystroke.

#### Impact
Distracting, makes the page feel unstable; users may lose focus mid-query or mistake the movement for a page reload.

---

### TC-013: Sorting reorders the product list

- **Requirement:** REQ-CAT-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-010](./bug-reports.md#bug-010-sorting-reorders-the-product-list-in-reverse)

#### Steps
1. Open the Home page.
2. Go to the **Sort** section.
3. Choose a sort option.
4. Check the order of the products.

#### Expected
Products are reordered according to the option.

#### Actual
Products are reordered, but not according to the option; the order is reversed.

---

### TC-014: The "Price Range" feature filters listings according to the price range selected by the user

- **Requirement:** REQ-CAT-08  |  **Status:** Fail ✘  |  **Related bug:** [BUG-011](./bug-reports.md#bug-011-price-range-filter-does-nothing)

#### Steps
1. Open the Home page.
2. Go to the **Price Range** section.
3. Choose a price range by moving the range slider handles.
4. Check how the products are displayed after applying the price range.

#### Expected
Products are in the price range are displayed, while products out of range are not.

#### Actual
Nothing happens, only ad titles jump left/right consistently with every movement of the handle.

---

### TC-015: Brand filter shows real names and filters products

- **Requirement:** REQ-CAT-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-012](./bug-reports.md#bug-012-brand-filter-shows-placeholder-names-and-only-two-work)

#### Steps
1. Open the Home page.
2. Go to the **By brand** filter section.
3. Read the brand names.
4. Select each brand.

#### Expected
Real brand names are shown, and each brand filters the list.

#### Actual
Names are "Brand name 1" to "Brand name 10", and only 1 and 2 filter products.

---

### TC-016: All categories in the navbar and in the Filters have real names and show products

- **Requirement:** REQ-CAT-05  |  **Status:** Fail ✘  |  **Related bug:** [BUG-013](./bug-reports.md#bug-013-category-undefined-is-listed-and-contains-nothing), [BUG-014](./bug-reports.md#bug-014-chainsaws-category-returns-404)

#### Steps
1. Open the Home page.
2. Open the Categories menu by clicking on the **Categories** tab, and check the options
3. Go to the **By category** filter section, and check the options.
4. Open every option to check whether it contains products or not.

#### Expected
No unnamed category exists, and every option shows products.

#### Actual
- A category named "UNDEFINED" exists and contains no products or data.
- A category named "Chainsaws" exists and clicking it opens a page shows a 404 Error Page Not Found.

---

### TC-017: Sustainability filter filters products

- **Requirement:** REQ-CAT-09  |  **Status:** Fail ✘  |  **Related bug:** [BUG-015](./bug-reports.md#bug-015-sustainability-filter-does-nothing)

#### Steps
1. Open the Home page.
2. Go to the **Sustainability** filter section, and check the box.
3. Check if the eco-friendly products are the only shown products.

#### Expected
Only eco-friendly products are shown.

#### Actual
Nothing changes, only ad titles jump left/right consistently by every click on the checkbox.

---

### TC-018: Ads display their images, names, and prices.

- **Requirement:** REQ-CAT-06  |  **Status:** Fail ✘  |  **Related bug:** [BUG-016](./bug-reports.md#bug-016-three-ads-do-not-show-their-images-until-clicked)

#### Steps
1. Open the home page.
2. Look at the ads.
3. Check if all the ads "from the first page to the last page" show their images, names, and prices.

#### Expected
All ads show their images, names, and prices.

#### Actual
Three ads (Slip Joint Pliers "First page", Wood Saw "Second page", Belt Sander "Third page") their images appear only after clicking the ad and opening the product.

---------------------------------

## Product details


## Product details

### TC-019: Product page shows product details

- **Requirement:** REQ-PRD-01  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open any product.

#### Expected
Product data and image are shown.

#### Actual
Product data and image are shown.

---

### TC-020: The layout inside the ad details page does not overlap, and it's free of any other design flaws

- **Requirement:** REQ-PRD-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-017](./bug-reports.md#bug-017-add-to-cart-and-add-to-favourites-buttons-overlap), [BUG-007](./bug-reports.md#bug-007-spelling-errors-in-the-ui-contakt-sorth-reltded-products)

#### Steps
1. Open the Home page.
2. Open any product.
3. Check the layout, the buttons, titles, tabs, and every element inside the product details page.

#### Expected
Everything inside the page is clean and functional.

#### Actual
- Two buttons overlap, "**Add to cart**" and "**Add to favourites**".
- Spelling error in the UI "**Reltded products**", see BUG-007.

---------------------------------

## Cart and favourites


## Cart and favourites

### TC-021: Adding a product to the cart shows a success message

- **Requirement:** REQ-CRT-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-018](./bug-reports.md#bug-018-error-message-appears-after-successfully-adding-to-cart-or-favourites)

#### Steps
1. Open any product.
2. Click Add to cart.

#### Expected
A success message appears.

#### Actual
The error "Oeps, something went wrong" appears, but the product is added.

---

### TC-022: Adding a product to favourites shows a success message

- **Requirement:** REQ-CRT-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-018](./bug-reports.md#bug-018-error-message-appears-after-successfully-adding-to-cart-or-favourites)

#### Steps
1. Open any product.
2. Click Add to favourites.

#### Expected
A success message appears.

#### Actual
The error "Oeps, something went wrong" appears, but the product is added.

---

### TC-023: The layout inside the Favorites page does not overlap, and it's free of any other design flaws, and everything is functional

- **Requirement:** REQ-CRT-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-019](./bug-reports.md#bug-019-some-ads-descriptions-overlap-with-their-images-inside-the-favourites-page), [BUG-020](./bug-reports.md#bug-020-clicking-on-the-ad-inside-the-favourites-page-does-not-open-the-product-details-page)

#### Steps
1. Log in with valid credentials.
2. Open any product and add it to your favourites.
3. Go to the favourites list in the user data section.
4. Check the layout, the buttons, titles, tabs, and every element inside the Favorites page.

#### Expected
Everything inside the page is clean and functional.

#### Actual
- Some ads descriptions overlap with their images.
-  Clicking on the ad does not open the product details page.

---

### TC-024: Added product appears in the cart

- **Requirement:** REQ-CRT-02  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Add a product to the cart.
2. Open the cart.

#### Expected
The product is listed in the cart.

#### Actual
The product is listed in the cart.

---

### TC-025: Cart table has clean layout

- **Requirement:** REQ-CRT-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-021](./bug-reports.md#bug-021-total-heading-is-duplicated-in-the-cart-table)

#### Steps
1. Add a product to the cart.
2. Open the cart.
3. Check the layout, the buttons, titles, tabs, and every element inside the cart page.

#### Expected
Everything inside the page is clean and functional.

#### Actual
"Total" appears twice: above the line totals and above the delete buttons.

---

### TC-026: Items quantity, price, line total, and total are real and mathematically correct

- **Requirement:** REQ-CRT-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-022](./bug-reports.md#bug-022-line-totals-in-the-cart-show-0000)

#### Steps
1. Add a product to the cart.
2. Open the cart.
3. Check items quantity, price, line total, and total to see if they're real and mathematically correct.

#### Expected
All data is correct.

#### Actual
The line total shows $00.00 whatever the price.

---

### TC-027: Product can be removed from the cart

- **Requirement:** REQ-CRT-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-023](./bug-reports.md#bug-023-delete-button-in-the-cart-does-not-remove-products)

#### Steps
1. Add a product to the cart.
2. Open the cart.
3. Click the delete button of the product.

#### Expected
The product is removed and the totals update.

#### Actual
Nothing happens; a product can only be deleted by changing its quantity to 0, while clicking the delete button has no effect.

---

### TC-028: Product can be removed from the favourites list

- **Requirement:** REQ-CRT-05  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Add a product to the favourites.
2. Open the favourites list.
3. Click the delete button of the product.

#### Expected
The product is successfully removed from the list.

#### Actual
The product is successfully removed from the list.

---------------------------------

## Account


## Account

### TC-029: Register with valid data

- **Requirement:** REQ-ACC-01  |  **Status:** Pass ✔  |  **Related bug:** —

#### Test Data
- First name: **Memo**
- Last name: **Wolf**
- Date of birth: **2004-01-20**
- Address: **15 Yemen road, Yemen.**
- Postcode: **555555**
- City: **Winterfell**
- Country: **The North**
- State: **Egypt**
- Phone: **4545454545**
- E-mail address: **foo@bar.baz**
- Password: **5566447799MmWw$**

#### Steps
1. Open the Register page.
2. Fill in all fields with valid data.
3. Submit the form.

#### Expected
The account is created.

#### Actual
The account is created.

---

### TC-030: Country and state fields collect the right data

- **Requirement:** REQ-ACC-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-024](./bug-reports.md#bug-024-country-and-state-fields-are-swapped-on-the-register-page)

#### Steps
1. Open the Register page.
2. Enter a country in the Country field and a state in the State field.

#### Expected
Each field accepts what its label says.

#### Actual
The fields are swapped: the country must be entered in State, and the state in Country.

---

### TC-031: Date of birth above the age limit is rejected

- **Requirement:** REQ-ACC-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-025](./bug-reports.md#bug-025-date-of-birth-over-the-age-limit-of-75-is-accepted)

#### Test Data
- Year of birth: **1940**

#### Steps
1. Open the Register page.
2. Enter a date of birth with the year 1940 "**any age over 75**" and valid data in the other fields.
3. Submit the form.

#### Expected
An error message is shown and registration is refused.

#### Actual
The user is registered without any error message.

---

### TC-032: Invalid postcode is rejected

- **Requirement:** REQ-ACC-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-026](./bug-reports.md#bug-026-invalid-postcode-is-accepted-on-registration)

#### Test Data
- Postcode: **hggtjtjg**

#### Steps
1. Open the Register page.
2. Enter an invalid postcode and valid data in the other fields.
3. Submit the form.

#### Expected
A validation error is shown.

#### Actual
The invalid postcode is accepted.

---

### TC-033: Login with valid credentials

- **Requirement:** REQ-ACC-04  |  **Status:** Pass ✔  |  **Related bug:** —

#### Test Data
- E-mail address: **foo@bar.baz**
- Password: **5566447799MmWw$**

#### Steps
1. Open the Login page.
2. Enter valid credentials.
3. Submit the form.

#### Expected
The user is logged in.

#### Actual
The user is logged in.

---

### TC-034: Header shows the user's name or "My account" after login

- **Requirement:** REQ-ACC-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-027](./bug-reports.md#bug-027-user-data-not-found-replaces-the-account-tab-after-login)

#### Steps
1. Log in with valid credentials.
2. Look at the navigation bar.

#### Expected
The Log in tab is replaced by "My account" or the user's name.

#### Actual
The tab is named "User Data not found".

---

### TC-035: Login with invalid credentials shows an error

- **Requirement:** REQ-ACC-04  |  **Status:** Pass ✔  |  **Related bug:** —

#### Test Data
- Email: **foo@bar.baz**
- Password: **a wrong password** (any value that is not the registered password)

#### Steps
1. Open the Login page.
2. Enter a valid email with a wrong password.
3. Click the "**Login**" button.

#### Expected
An error message is shown and the user stays logged out.

#### Actual
An error message is shown "**Invalid email or password**" and the user stays logged out.

---

### TC-036: Empty Email field

- **Requirement:** REQ-ACC-08  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.

#### Test Data
- Email: (empty)
- Password: **5566447799MmWw$**

#### Steps
1. Open the Login page.
2. Leave the Email field empty.
3. Enter the right password in the Password field.
4. Click the "**Login**" button.

#### Expected
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

#### Actual
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

---

### TC-037: Empty Password field

- **Requirement:** REQ-ACC-08  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.

#### Test Data
- Email: **foo@bar.baz**
- Password: (empty)

#### Steps
1. Enter the right email in the Email field.
2. Leave the Password field empty.
3. Click the "**Login**" button.

#### Expected
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

#### Actual
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

---

### TC-038: Both fields empty

- **Requirement:** REQ-ACC-08  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.

#### Test Data
- Email: (empty)
- Password: (empty)

#### Steps
1. Leave both Email and Password fields empty.
2. Click the "**Login**" button.

#### Expected
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

#### Actual
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

---

### TC-039: Whitespace-only input

- **Requirement:** REQ-ACC-08  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.

#### Test Data
- Email: (single space)
- Password: (single space)

#### Steps
1. Enter a single space in the Email field.
2. Enter a single space in the Password field.
3. Click the "**Login**" button.

#### Expected
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

#### Actual
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

---

### TC-040: Valid email, valid password with extra whitespace

- **Requirement:** REQ-ACC-08  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.

#### Test Data
- Email: **foo@bar.baz**
- Password: **5566447799MmWw$** with extra **whitespace**

#### Steps
1. Enter valid email in the Email field.
2. Enter valid password with extra **whitespace** in the Password field.
3. Click the "**Login**" button.

#### Expected
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

#### Actual
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.

---

### TC-041: Valid email with leading/trailing whitespace, valid password

- **Requirement:** REQ-ACC-10  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.

#### Test Data
- Email: **foo@bar.baz** with **leading/trailing whitespace**
- Password: **5566447799MmWw$**

#### Steps
1. Enter valid email with **leading/trailing whitespace** in the Email field.
2. Enter the valid password in the Password field.
3. Click the "**Login**" button.

#### Expected
- Two possible valid behaviors:
   - Option A (Trimming): The app trims whitespace and logs the user in successfully.
   - Option B (No Trimming): The app treats " foo@bar.baz " as invalid and shows an error message.

#### Actual
- With-bugs Sprint 5:
   - Option B (No Trimming) has been achieved, the app treats " foo@bar.baz " as invalid and shows an error message.

- Clean Sprint 5:
   - Option A (Trimming) has been achieved, the app trimmed whitespace and logged the user in successfully.

---

### TC-042: Special characters combined with valid credentials in the email

- **Requirement:** REQ-ACC-09  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.
- Valid password is known.

#### Test Data
- Email: **foo@bar.baz#$%**
- Password: **5566447799MmWw$**

#### Steps
1. Enter **foo@bar.baz#$%** in the Email field.
2. Enter **5566447799MmWw$** in the Password field.
3. Click the "**Login**" button.

#### Expected
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.
- No UI corruption (fields don't disappear, layout doesn't break).
- No JavaScript errors in DevTools console.

#### Actual
- Form does not submit.
- Validation message appears "Invalid email or password".
- User remains on the Login page.
- No UI corruption (fields didn't disappear, layout didn't break).
- No JavaScript errors in DevTools console.

---

### TC-043: Injection & Unicode stress test

- **Requirement:** REQ-ACC-09  |  **Status:** Fail ✘  |  **Related bug:** [BUG-028](./bug-reports.md#bug-028-sql-injection-payload-in-the-email-field-bypasses-the-login), [BUG-029](./bug-reports.md#bug-029-server-returns-500-internal-server-error-when-submitting-sql-injection-style-payload----in-login-email-field)

#### Preconditions
- User is on the Login page.
- DevTools Console tab is open (to catch JS errors).

#### Test Data
**Run each of these sequentially as separate attempts:**

| Attempt | Email payload | Category |
|:-------:|---------------|----------|
| 1 | `<script>alert("XSS")</script>` | XSS |
| 2 | `' OR '1'='1` | SQLi |
| 3 | `😀ñü` | Unicode / emoji |
| 4 | `';--` | Quotes / escaping |

#### Steps
- For each attempt above: clear fields → enter payload in Email → enter **password** in Password → click Log In → observe result → repeat for next payload.

#### Expected
- Every attempt produces the standard invalid credentials error.
- No alert boxes pop up (XSS success = critical bug).
- No blank screens, infinite loading, or corrupted UI.
- Unicode renders correctly in the field (not as empty boxes or garbled text).

#### Actual
- Attempt 1: PASS – "Invalid email or password" displayed; no alert box; Console clean.
- Attempt 2: FAIL – User logged in successfully without using valid email; Console shows error.
- Attempt 3: PASS – Unicode rendered correctly as 😀ñü; standard error shown.
- Attempt 4: FAIL – HTTP 500 Internal Server Error shown in console logs; no UI corruption.

---

### TC-044: Very long strings in email and password fields

- **Requirement:** REQ-ACC-08  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.
- A text string of 257+ characters is prepared.

#### Test Data
- Email: `A` × 257 characters
- Password: `B` × 257 characters

#### Steps
1. Enter this code "**```copy("A".repeat(257))```**" in DevTools console to copy the 257 characters instantly.
2. Enter the 257-character string in the Email field.
3. Enter the 257-character string in the Password field.
4. Click the "**Login**" button.

#### Expected
- Form rejects input with validation message OR truncates visibly without UI breakage.
- Validation message appears "Invalid email or password".
- User remains on the Login page.
- No layout corruption, crashes, blank screens, or unhandled server errors.

#### Actual
- The form rejects the input.
- Validation message appears "Invalid email or password".
- User remains on the Login page.
- No layout corruption, crashes, blank screens, or unhandled server errors.

---

### TC-045: Register Email case sensitivity (Foo@bar.baz vs foo@bar.baz)

- **Requirement:** REQ-ACC-11  |  **Status:** Fail ✘  |  **Related bug:** [BUG-030](./bug-reports.md#bug-030-capitalised-email-address-on-registration-shows-e-mail-format-is-invalid-instead-of-the-duplicate-email-message)

#### Preconditions
- User is on the Register page.
- User is pre-registered with email: **foo@bar.baz**.

#### Test Data
- Email: **Foo@bar.baz**

#### Steps
1. Enter **Foo@bar.baz** in the Email field.
2. Fill the other fields with valid data.
3. Click the "**Register**" button.

#### Expected
- Register fails.
- Validation message appears ("A customer with this email address already exists").

#### Actual
- Registration did not complete; user remained on the Register page.
- Validation message displayed: "E-mail format is invalid."
- Expected message ("A customer with this email address already exists") was not displayed, instead, this hint message appeared ("E-mail format is invalid").

---

### TC-046: Login Email case sensitivity (Foo@bar.baz vs foo@bar.baz)

- **Requirement:** REQ-ACC-10  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.
- User is pre-registered with email: **foo@bar.baz**, and password: **5566447799MmWw$**.

#### Test Data
- Email: **Foo@bar.baz**
- Password: **5566447799MmWw$**

#### Steps
1. Enter **Foo@bar.baz** in the Email field.
2. Enter **5566447799MmWw$** in the Password field.
3. Click the "**Login**" button.

#### Expected
- Login succeeds (email should be treated as case-insensitive per industry standard).

#### Actual
- User is logged in successfully.

---

### TC-047: Login Password case sensitivity (5566447799MMWW$ vs 5566447799MmWw$)

- **Requirement:** REQ-ACC-10  |  **Status:** Pass ✔  |  **Related bug:** —

#### Preconditions
- User is on the Login page.

#### Test Data
- Email: **foo@bar.baz**
- Password: **5566447799MMWW$**

#### Steps
1. Enter **foo@bar.baz** in the Email field.
2. Enter **5566447799MMWW$** in the Password field.
3. Click the "**Login**" button.

#### Expected
- User remains on the Login page.
- An error message is displayed ("Invalid email or password").

#### Actual
- User remains on the Login page.
- An error message is displayed ("Invalid email or password").

---

### TC-048: Register with an already registered email

- **Requirement:** REQ-ACC-11  |  **Status:** Fail ✘  |  **Related bug:** [BUG-031](./bug-reports.md#bug-031-registering-with-an-existing-email-returns-a-password-hint-message)

#### Preconditions
- User is on the Register page (/auth/register).
- An account already exists with email: foo@bar.baz

#### Test Data
- Email: **foo@bar.baz**
- Other fields: valid data

#### Steps
1. Enter **foo@bar.baz** in the Email field.
2. Fill the other fields with valid data.
3. Click the "**Register**" button.

#### Expected
- Registration fails; user stays on the Register page.
- Validation message appears: ("A customer with this email address already exists").

#### Actual
- Registration fails; user stays on the Register page.
- Message displayed: ("User already registered - Your password hint is: Name of your cat!").
- The expected duplicate-email validation message did not appear.
- The message references a password-hint feature that does not exist anywhere in the application.

---

### TC-049: Update profile

- **Requirement:** REQ-ACC-05  |  **Status:** Fail ✘  |  **Related bug:** [BUG-032](./bug-reports.md#bug-032-update-profile-returns-resource-not-found)

#### Steps
1. Log in.
2. Open the profile page.
3. Edit any field.
4. Click Update Profile.

#### Expected
A success message appears and the change is saved.

#### Actual
The error "Resource not found" appears.

---

### TC-050: Change password while logged in

- **Requirement:** REQ-ACC-06  |  **Status:** Fail ✘  |  **Related bug:** [BUG-033](./bug-reports.md#bug-033-changing-the-password-while-logged-in-locks-the-user-out)

#### Steps
1. Log in.
2. Open the change password option and set a new password.
3. Log out.
4. Log in with the new password.

#### Expected
The user can log in with the new password.

#### Actual
The password is changed to a value the user did not choose, and the account becomes inaccessible.

---

### TC-051: Reset a forgotten password

- **Requirement:** REQ-ACC-07  |  **Status:** Fail ✘  |  **Related bug:** [BUG-034](./bug-reports.md#bug-034-resetting-a-forgotten-password-locks-the-user-out)

#### Steps
1. Open the Forgot your Password? page.
2. Follow the reset flow and set a new password.
3. Log in with the new password.

#### Expected
The user can log in with the new password.

#### Actual
The password is changed to a value the user did not choose, and the account becomes inaccessible.

---

### TC-052: Check the layout and data accuracy inside the profile page

- **Requirement:** REQ-ACC-12  |  **Status:** Fail ✘  |  **Related bug:** [BUG-035](./bug-reports.md#bug-035-city-field-in-the-profile-page-shows-city-not-found-instead-of-the-users-city)

#### Steps
1. Open the profile page after logging in successfully.
2. Check the layout, the buttons, titles, tabs, and every element inside the profile page.

#### Expected
Everything is clean and functional.

#### Actual
The city field is filled with "City not found" instead of the user's city.

---------------------------------

## Checkout


## Checkout

### TC-053: Move through the checkout steps

- **Requirement:** REQ-CHK-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-036](./bug-reports.md#bug-036-step-indicator-stops-working-at-the-final-checkout-step-payment)

#### Steps
1. Add a product to the cart.
2. Open the cart and proceed to checkout.
3. Go through the checkout steps using the "Proceed to checkout" button.
4. Use the step indicator to go back to a previous step.

#### Expected
- The user can complete each step.
- Step indicator is functional.

#### Actual
- The steps can be completed (defects in individual steps are in the next test cases).
- Once the user reach to the final step "payment method", the step indicator becomes non-functional, so user has to use the browser back button to step back and go through all the steps again from the very beginning.

---

### TC-054: layout through the checkout steps is clean and everything is functional

- **Requirement:** REQ-CHK-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-037](./bug-reports.md#bug-037-continue-button-in-the-billing-address-step-has-no-label)

#### Steps
1. Add a product to the cart.
2. Open the cart and proceed to checkout.
3. Go through the checkout steps.
4. Check the layout, the buttons, titles, tabs, and every element inside the checkout pages.

#### Expected
Everything is clean and functional.

#### Actual
Continue button in the Billing Address step has no label.

---

### TC-055: Billing address is pre-filled with valid values

- **Requirement:** REQ-CHK-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-038](./bug-reports.md#bug-038-postcode-field-in-the-billing-address-is-pre-filled-with-missing-value), [BUG-039](./bug-reports.md#bug-039-house-number-field-in-the-billing-address-is-not-pre-filled-clean-sprint-5)

#### Steps
1. Reach the **Billing Address** step of the checkout.
2. Check the pre-filled fields.

#### Expected
All pre-filled fields hold valid values.

#### Actual
- With-bugs Sprint 5:
  - The "**Postcode**" field contains the text "missing value".

- Clean Sprint 5:
  - "**House number**" field is empty.

---

### TC-056: Each payment method is practical and functional

- **Requirement:** REQ-CHK-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-040](./bug-reports.md#bug-040-account-name-and-number-are-required-for-every-payment-method)

#### Steps
1. Reach the Payment step of the checkout.
2. Check all the payment methods and their requirements.

#### Expected
Every payment method is usable and asks only for the details it needs.

#### Actual
Account name and number are required for every payment method, even Cash on Delivery.

---

### TC-057: Purchase confirmation shows an invoice number

- **Requirement:** REQ-CHK-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-041](./bug-reports.md#bug-041-normal-purchase-creates-no-invoice-and-shows-no-invoice-number)

#### Steps
1. Complete a purchase from the cart page.
2. Read the confirmation.

#### Expected
The confirmation shows an invoice number.

#### Actual
No invoice number is shown.

---------------------------------

## Invoices


## Invoices

### TC-058: Invoice is listed after a normal purchase

- **Requirement:** REQ-INV-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-041](./bug-reports.md#bug-041-normal-purchase-creates-no-invoice-and-shows-no-invoice-number)

#### Steps
1. Complete a purchase from the cart page.
2. Open My account, then My invoices.

#### Expected
The invoice appears in the list.

#### Actual
The invoice does not appear.

---

### TC-059: Purchase through the Chat Assistant creates an invoice

- **Requirement:** REQ-INV-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-043](./bug-reports.md#bug-043-purchasing-through-chat-assistant-encountered-an-error-on-the-clean-sprint-5)

#### Steps
1. Complete a purchase using the Chat Assistant.
2. Open My account, then My invoices.

#### Expected
The invoice appears in the list.

#### Actual
- With-bugs Sprint 5:
  - The invoice appears in the list.

- Clean Sprint 5:
  - Purchasing through Chat Assistant encountered an error.

---

### TC-060: Invoice details are complete

- **Requirement:** REQ-INV-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-042](./bug-reports.md#bug-042-invoice-created-through-the-chat-assistant-shows-method-not-found-and-undefined-fields), [BUG-043](./bug-reports.md#bug-043-purchasing-through-chat-assistant-encountered-an-error-on-the-clean-sprint-5)

#### Steps
1. Complete a purchase using the Chat Assistant.
2. Open the invoice details.

#### Expected
Invoice details are complete.

#### Actual
- **With-bugs Sprint 5:**
  - The Payment Information and Billing Address fields are empty.

- **Clean Sprint 5:**
  - Purchasing through Chat Assistant encountered an error.

---------------------------------

## Contact


## Contact

### TC-061: Send a contact message without attachment

- **Requirement:** REQ-CNT-01  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the Contact page.
2. Fill in the form with valid data.
3. Click Send.

#### Expected
The message is sent and a confirmation is shown.

#### Actual
The message is sent and a confirmation is shown.

---

### TC-062: Check the layout inside the Contact page

- **Requirement:** REQ-CNT-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-044](./bug-reports.md#bug-044-contact-subject-options-have-3-visual-errors)

#### Steps
1. Open the Contact page.
2. Check the layout, the buttons, titles, tabs, and every element inside the Contact page.

#### Expected
Everything inside the page is clean and functional.

#### Actual
**Subject options have 3 visual errors:**
1. "**Return**" is very small, smaller than the other options and hard to read.
2. "**Error 101: Subject not found**".
3. "**Error 202: Translation error**".

---

### TC-063: Attachment rules match the label (with-bugs build)

- **Requirement:** REQ-CNT-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-045](./bug-reports.md#bug-045-contact-attachment-label-does-not-match-the-behaviour-with-bugs-build)

#### Steps
1. Open the Contact page on the with-bugs build and read the label.
2. Attach a .txt file that sizes more than 500 KB, and also a .pdf and a .jpg files size the same.

#### Expected
Following the label: .txt, .pdf, and .jpg are accepted up to 500 KB, and larger files are rejected.

#### Actual
Only .txt files are accepted, and the above 500 KB file is accepted with no error. A .pdf or .jpg file is rejected with ("The file extension is incorrect, we only accept txt files.").

---

### TC-064: Attachment rule is usable (clean build)

- **Requirement:** REQ-CNT-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-046](./bug-reports.md#bug-046-attachment-rule-only-txt-files-0-kb-makes-the-field-unusable-clean-build)

#### Steps
1. Open the Contact page on the clean build and read the label.
2. Attach a 1 KB .txt file, then a 600 KB .txt file.
3. Try to select a .pdf or .jpg file.

#### Expected
A reasonable file can be attached.

#### Actual
The label says only .txt files of 0 KB are allowed. Both non-empty files are rejected with "File should be empty.", and .pdf and .jpg files are not selectable.

---

### TC-065: Check the functionality and the layout inside the My messages tab

- **Requirement:** REQ-CNT-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-047](./bug-reports.md#bug-047-message-details-button-opens-the-most-recent-message-instead-of-the-selected-one)

#### Steps
1. Log in after registering with valid credentials.
2. Open the "**Contact**" page.
3. Attach a valid file and submit the form.
4. Repeat the previous step for one or two more times.
5. Go to the "**My messages**" section inside My account tab "or User Data not found as it named".
6. Check the layout, the buttons, titles, tabs, and every element inside the My messages page.
7. Check whether the two or three successfully submitted forms appear, and try to open the details for each form.

#### Expected
- Everything inside the page is clean and functional.
- The two forms appear and are not overlapped, and clicking the details button for each one of them opens the true details page of the form.

#### Actual
Clicking the details button for any message opens the details of the most recently sent message, rather than the details of the selected message.

---------------------------------

## Chat Assistant


## Chat Assistant

### TC-066: Chat Assistant opens

- **Requirement:** REQ-CHT-01  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the home page.
2. Locate the Chat Assistant (chat icon or button).
3. Click it.

#### Expected
The chat window opens and shows an input field and a greeting or prompt.

#### Actual
The chat window opens and shows an input field and a greeting or prompt.

---

### TC-067: Chat Assistant closes and reopens

- **Requirement:** REQ-CHT-01  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the chat.
2. Close it with the close control.
3. Open it again.

#### Expected
The window closes completely and reopens without an error.

#### Actual
The window closes completely and reopens without an error.

---

### TC-068: Search for an existing product through the chat

- **Requirement:** REQ-CHT-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-048](./bug-reports.md#bug-048-product-images-do-not-show-when-searching-for-products-via-the-chat-assistant)

#### Steps
1. Open the chat.
2. Ask for a product that exists in the catalog (use a name taken from the product list).

#### Expected
The assistant shows the matching product(s), and the name and price match the catalog.

#### Actual
The assistant shows the matching product(s), and the name and price match the catalog, however, the product images do not appear.

---

### TC-069: Search for a product that does not exist

- **Requirement:** REQ-CHT-03  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the chat.
2. Ask for a product that is not in the catalog (for example "unicorn saddle").

#### Expected
The assistant says clearly that nothing was found, with no error and no empty reply.

#### Actual
The assistant says clearly that nothing was found, with no error and no empty reply, and with respond ("No products found. Try a different search.").

---

### TC-070: Add a product to the cart through the chat

- **Requirement:** REQ-CHT-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-049](./bug-reports.md#bug-049-cart-does-not-show-the-product-name-and-price-after-adding-a-product-through-the-chat-assistant)

#### Steps
1. Log in (if the assistant requires it).
2. Open the chat.
3. Ask the assistant to add an existing product to the cart.
4. Open the cart page.

#### Expected
The assistant confirms the action, and the cart shows the product with the correct quantity and price.

#### Actual
The assistant confirms the action, but the cart doesn't show the name and price.

---

### TC-071: Re-adding a product already in the cart to the cart via chat

- **Requirement:** REQ-CHT-04  |  **Status:** Fail ✘  |  **Related bug:** [BUG-050](./bug-reports.md#bug-050-re-adding-a-product-already-in-the-cart-through-the-chat-assistant-replaces-the-quantity-instead-of-increasing-it)

#### Steps
1. Log in (if the assistant requires it).
2. Open the chat.
3. Ask the assistant to add an existing product to the cart.
4. Redo the previous step.
5. Open the cart page.
6. Check the quantity and price values; they should be increased.

#### Expected
The assistant confirms the action, and the cart shows the product with the new increased correct quantity and price.

#### Actual
- The assistant confirms the action, and the cart shows the product but not with the new increased correct quantity and price.
- The old process has been replaced by the new one, so, the cart only shows the new quantity and price.

---

### TC-072: Purchase through the chat with valid data

- **Requirement:** REQ-CHT-05  |  **Status:** Fail ✘  |  **Related bug:** [BUG-043](./bug-reports.md#bug-043-purchasing-through-chat-assistant-encountered-an-error-on-the-clean-sprint-5)

#### Steps
1. Log in.
2. Open the chat and ask to buy an existing product.
3. Provide valid billing and payment details when asked.
4. Confirm the purchase.

#### Expected
The purchase is confirmed with an order or invoice number. (Invoice creation and content are checked in TC-058 and TC-060.)

#### Actual
- With-bugs Sprint 5:
  - The purchase is confirmed with an invoice number.

* Clean Sprint 5:
Purchasing through Chat Assistant encountered an error.

---

### TC-073: Purchase through the chat with missing or invalid data

- **Requirement:** REQ-CHT-05  |  **Status:** Fail ✘  |  **Related bug:** [BUG-051](./bug-reports.md#bug-051-chat-assistant-shows-a-generic-error-instead-of-asking-for-valid-data-after-a-purchase-attempt-with-invalid-data)

#### Steps
1. Log in.
2. Open the chat and ask to buy an existing product.
3. Give incomplete or invalid details (for example a blank postcode, or letters in the account number).

#### Expected
The assistant refuses, asks for correct data, and creates no order.

#### Actual
The assistant refuses, shows an error ("There was an error processing your order: Something went wrong"), and creates no order.

---

### TC-074: Purchase through the chat while logged out

- **Requirement:** REQ-CHT-05  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Make sure you are logged out.
2. Open the chat and ask to buy a product.

#### Expected
The assistant asks the user to log in, or explains clearly why it cannot continue. No order is created. (Assumption: confirm the intended behaviour.)

#### Actual
- The assistant asks the user to log in with response ("Please sign in to continue with checkout.").
- After user clicking Sign in, the assistant asks him to enter his email address and password to log him in and continue the checkout process.

---

### TC-075: Send an empty message

- **Requirement:** REQ-CHT-06  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the chat.
2. Send the message with the input empty, then with only spaces.

#### Expected
Nothing is sent, or a clear prompt appears. No blank message and no error.

#### Actual
Nothing is sent.

---

### TC-076: Send a very long message

- **Requirement:** REQ-CHT-06  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the chat.
2. Paste a message of about 1000 characters and send it, then 100000 characters and also send it.

#### Expected
The message is answered, or rejected with a clear limit message. The layout is not broken.

#### Actual
The message is answered ("No products found. Try a different search.").

---

### TC-077: Send special characters and a script payload

- **Requirement:** REQ-CHT-06  |  **Status:** Fail ✘  |  **Related bug:** [BUG-055](./bug-reports.md#bug-055-chat-assistant-search-returns-products-for-injection-style-payloads-on-the-with-bugs-build)

#### Steps
1. Open the chat.
2. Send each of these, one at a time: `<script>alert("XSS")</script>`, `'OR'1'='1`, and `😀ñü`.

#### Expected
Each one is shown as plain text. No alert appears, the layout is not broken, and no error occurs.

#### Actual
Each one is shown as plain text. Two of them shown products as results after being used as search input, but no alert appears, the layout is not broken, and no error occurs. The clean Sprint 5 does not return products for the same input.

---

### TC-078: Prices and totals in the chat match the cart

- **Requirement:** REQ-CHT-07  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Through the chat, add 2 units of a product to the cart.
2. Note the unit price and total that the assistant reports.
3. Open the cart page and compare.

#### Expected
The unit price and total are the same in the chat and in the cart.

#### Actual
The unit price and total are the same in the chat and in the cart.

---

### TC-079: Conversation is kept while navigating

- **Requirement:** REQ-CHT-08  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the chat and send two messages.
2. Go to another page, then reload the page.
3. Open the chat again.

#### Expected
The conversation is still there while the user navigating through the pages but not reloading the whole app, once reloaded, everything is gone.

#### Actual
The conversation is still there while the user navigating through the pages but not reloading the whole app, once reloaded, everything is gone.

---

### TC-080: Chat window does not block the page

- **Requirement:** REQ-CHT-08  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the chat on the home page, a product page, and the cart page.
2. Check whether it covers important controls (Add to cart, Checkout).
3. Narrow the browser window and check again.

#### Expected
The window never blocks key controls permanently, can always be closed, and stays usable at a narrow width.

#### Actual
The window never blocks key controls permanently, can always be closed, and stays usable at a narrow width.

---

### TC-081: Response time

- **Requirement:** REQ-CHT-02  |  **Status:** Pass ✔  |  **Related bug:** —

#### Steps
1. Open the chat.
2. Send three different messages.
3. Time each reply with a stopwatch.

#### Expected
Replies arrive within a few seconds (agree a threshold, for example 5 seconds), or a loading indicator is shown.

#### Actual
- Replies arrive within a second or even less.
- A loading indicator is shown.

---------------------------------

## Tab Order


## Keyboard Accessibility

### TC-082: Keyboard focus order is logical and reaches every interactive element

- **Requirement:** REQ-KBD-01  |  **Status:** Fail ✘  |  **Related bug:** [BUG-052](./bug-reports.md#bug-052-keyboard-focus-order-is-wrong-or-skips-interactive-elements)

#### Preconditions
- User is on the website.
- No fields are currently focused (click outside the form or press Esc to reset focus).
- The "Tab" key on the keyboard is not broken.

#### Steps
1. Click outside the content (or press Esc) to make sure no field is focused.
2. Press the Tab key repeatedly and note where the focus lands after each press.
3. Press Shift+Tab at the last element to check the reverse order.
4. Repeat on the Contact, Login, and Registration pages, the Chat Assistant results, the navigation bar, the cart, and the checkout steps.

#### Expected
- Focus moves in a logical visual order.
- No interactive element is skipped, and no non-interactive element receives focus.
- Shift+Tab reverses the sequence correctly.

#### Actual
- With-bugs Sprint 5:
  - On the Contact page, the focus starts from the Subject field if the user is logged in, and from the First name field if not, instead of the top of the page.
  - On the Login page, the focus starts from the email field and goes to the Login button, and it does not follow the visual order.
  - On the Registration page, the focus moves from First name to Last name, skips Date of birth, goes through the other fields up to Email address, skips Password, and goes directly to the Register button.
  - In the Chat Assistant, the focus skips the product results completely, so the user cannot open any of them with the keyboard.

- Both Sprints:
  - Shift+Tab reverses the sequence correctly.
  - The focus skips the Sign out option in the navigation bar.
  - The focus skips the delete button inside the cart.
  - The focus skips the step indicator in the checkout steps.

---

### TC-083: Every focused element shows a visible focus indicator

- **Requirement:** REQ-KBD-02  |  **Status:** Fail ✘  |  **Related bug:** [BUG-053](./bug-reports.md#bug-053-chat-assistant-exit-button-has-no-visible-focus-indicator-and-the-product-highlight-replaces-the-comparison-tag-focus-clean-build)

#### Preconditions
- User is on the website.
- No fields are currently focused (click outside the form or press Esc to reset focus).
- The "Tab" key on the keyboard is not broken.

#### Steps
1. Open the clean Sprint 5 and go to the home page.
2. Press the Tab key and watch the comparison tag of each product while the focus moves.
3. Open the Chat Assistant.
4. Press the Tab key until the focus reaches the exit button.

#### Expected
Each focused element, including the comparison tag and the exit button, shows a visible focus indicator (outline or highlight).

#### Actual
- Clean Sprint 5:
  - The entire product is highlighted, instead of only the comparison tag.
  - The exit button of the Chat Assistant shows no visible focus indicator.

---

### TC-084: Focused rental product cards can be opened with the keyboard

- **Requirement:** REQ-KBD-03  |  **Status:** Fail ✘  |  **Related bug:** [BUG-054](./bug-reports.md#bug-054-focused-rental-product-cards-cannot-be-opened-with-the-enter-key)

#### Preconditions
- User is on the website.
- No fields are currently focused (click outside the form or press Esc to reset focus).
- The "Tab" key on the keyboard is not broken.

#### Steps
1. Open the Rentals page from the Categories menu.
2. Press the Tab key until a rental product has the focus.
3. Press the Enter key.

#### Expected
The product details page opens.

#### Actual
- With-bugs Sprint 5 and clean Sprint 5:
  - Pressing Enter on a focused rental product does not open the product details page, so the user has to use the mouse.
  - The filter checkboxes (By category, By brand, Sustainability) can be toggled with the Space key, as expected.
