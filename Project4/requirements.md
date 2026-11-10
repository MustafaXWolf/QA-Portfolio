# Requirements Analysis – Practice Software Testing (Toolshop)

The application has no formal specification, so the requirements below were derived from the behaviour and labels of the clean Sprint 5 build and from standard e-commerce practice. Each requirement has a source, so a reader can see what is fact and what is an assumption.

**Source key:** *Stated by the application* = a label, message, or rule shown on the page. *Observed* = what the clean build does. *Assumed* = what a user of any web shop would reasonably expect.

> ⚠️ Requirements marked "Assumed" are my own interpretation. On a real project they would be confirmed with the product owner.

## Requirements

| ID | Area | Requirement | Source |
|----|------|-------------|--------|
| REQ-NAV-01 | Navigation | The application logo is visible and links to the home page. | Assumed |
| REQ-NAV-02 | Navigation | The navigation bar highlights the tab of the page the user is on. | Assumed |
| REQ-NAV-03 | Navigation | Each navigation tab opens its own page (Home opens the home page, Contact opens the contact page). | Assumed |
| REQ-NAV-04 | Navigation | Browser Back from a product page returns the user to the previous list with its search results, ads page, and filters preserved. | Assumed |
| REQ-CON-01 | Content | All user-facing text is spelled correctly. | Assumed |
| REQ-CAT-01 | Catalog | The product list shows products with image, name, and price. | Observed |
| REQ-CAT-02 | Catalog | The user can search products by keyword, and the search control is clearly visible. | Assumed |
| REQ-CAT-03 | Catalog | The user can sort the product list, and the order follows the selected option. | Observed |
| REQ-CAT-04 | Catalog | The user can filter products by brand, and brand names are real names. | Observed |
| REQ-CAT-05 | Catalog | Every listed category has a name and opens a page that shows its products. | Assumed |
| REQ-CAT-06 | Catalog | Ads display their image, name, and price. | Assumed |
| REQ-CAT-07 | Catalog | The page layout stays stable while the user types in the search field or uses the filters. | Assumed |
| REQ-CAT-08 | Catalog | The Price Range filter shows only the products inside the selected range. | Observed |
| REQ-CAT-09 | Catalog | The Sustainability filter shows only eco-friendly products. | Stated by the application |
| REQ-PRD-01 | Product details | The product page shows product data, image, price, and related products. | Observed |
| REQ-PRD-02 | Product details | The product page layout is clean: buttons, titles, and tabs do not overlap. | Assumed |
| REQ-CRT-01 | Cart and favourites | Adding a product to the cart or favourites shows a success message. | Assumed |
| REQ-CRT-02 | Cart and favourites | The cart lists the added products with correct quantities, prices, line totals, and one clear total. | Assumed |
| REQ-CRT-03 | Cart and favourites | The user can remove a product from the cart. | Assumed |
| REQ-CRT-04 | Cart and favourites | The favourites page is clean, and each product opens its details page. | Assumed |
| REQ-CRT-05 | Cart and favourites | The user can remove a product from the favourites list. | Observed |
| REQ-ACC-01 | Account | The user can register with valid data, and each field (including country and state) collects what its label says. | Observed |
| REQ-ACC-02 | Account | Registration enforces the date-of-birth age limit of 75 years. | Stated by the application |
| REQ-ACC-03 | Account | Registration rejects an invalid postcode. | Assumed |
| REQ-ACC-04 | Account | The user can log in with valid credentials, an error appears for invalid credentials, and the header then shows the user's name or "My account". | Assumed |
| REQ-ACC-05 | Account | A logged-in user can update the profile. | Assumed |
| REQ-ACC-06 | Account | A logged-in user can change the password and then log in with the new password. | Assumed |
| REQ-ACC-07 | Account | A user who forgot the password can reset it and then log in with the new password. | Assumed |
| REQ-ACC-08 | Account | Login rejects empty, whitespace-only, and very long input with a clear error. | Assumed |
| REQ-ACC-09 | Account | Login handles special characters, SQL injection, and script payloads safely. | Assumed |
| REQ-ACC-10 | Account | Email addresses are case-insensitive, surrounding spaces are handled consistently, and passwords are case-sensitive. | Assumed |
| REQ-ACC-11 | Account | Registration with an already registered email is refused with a clear message. | Stated by the application |
| REQ-ACC-12 | Account | The profile page shows the user's saved data correctly. | Assumed |
| REQ-CHK-01 | Checkout | The user can move through the checkout steps, and the step indicator works. | Observed |
| REQ-CHK-02 | Checkout | The billing address step is clean, pre-filled with valid data, and its continue button is labelled "Proceed to checkout". | Stated by the application |
| REQ-CHK-03 | Checkout | The payment step asks only for the details that the chosen method needs (Cash on Delivery needs no account details). | Assumed |
| REQ-CHK-04 | Checkout | A successful purchase shows a confirmation with an invoice number. | Assumed |
| REQ-INV-01 | Invoices | A completed order creates an invoice that appears under "My invoices". | Assumed |
| REQ-INV-02 | Invoices | Invoice details show the complete billing and payment information. | Assumed |
| REQ-INV-03 | Invoices | A purchase made through the Chat Assistant creates an invoice. | Observed |
| REQ-CNT-01 | Contact | The contact page is clean, and the user can send a message. | Assumed |
| REQ-CNT-02 | Contact | The attachment field accepts and rejects files according to the rule shown on the page, and that rule is usable. | Stated by the application |
| REQ-CNT-03 | Contact | Each sent message appears under "My messages" and opens its own details. | Assumed |
| REQ-CHT-01 | Chat Assistant | The Chat Assistant can be opened and closed from any page. | Assumed |
| REQ-CHT-02 | Chat Assistant | The assistant replies relevantly and within a reasonable time. | Assumed |
| REQ-CHT-03 | Chat Assistant | The assistant finds products by name and handles unknown ones, and the results show their images. | Assumed |
| REQ-CHT-04 | Chat Assistant | The user can add products to the cart through the assistant, and the cart shows the correct data. | Assumed |
| REQ-CHT-05 | Chat Assistant | The user can complete a purchase through the assistant, and invalid or missing data is handled clearly. | Observed |
| REQ-CHT-06 | Chat Assistant | The assistant handles unusual input safely. | Assumed |
| REQ-CHT-07 | Chat Assistant | Prices and totals in the chat match the cart and the invoice. | Assumed |
| REQ-CHT-08 | Chat Assistant | The conversation persists while the user navigates, and the window does not block the page. | Assumed |
| REQ-KBD-01 | Keyboard Accessibility | The Tab key follows the visual order and reaches every interactive element. | Assumed |
| REQ-KBD-02 | Keyboard Accessibility | Every focused element shows a visible focus indicator. | Assumed |
| REQ-KBD-03 | Keyboard Accessibility | Focused interactive elements can be activated with the keyboard. | Assumed |

## Related documents
- [Test plan](./test-plan.md)
- [Test cases](./test-cases.md)
- [Traceability matrix](./traceability-matrix.md)
