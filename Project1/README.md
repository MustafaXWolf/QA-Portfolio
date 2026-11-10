# Project 1 – Realbugz "Article" Page

Manual testing of a single article page on **Realbugz**, a practice website built to contain defects. The focus was on content, navigation, interactive elements, and console errors.

⬅️ [Back to portfolio](../README.md)

---

## 🎯 Objective

Verify the functionality, usability, and integrity of the article page, and identify and document defects.

## 🔎 Scope

| In scope | Out of scope |
|----------|--------------|
| Article content (text, images) | Performance and load testing |
| Navigation (links) | Cross-browser and mobile testing |
| Interactive elements (buttons) | Backend / API testing |
| Console and network errors on page load | Accessibility audit and security testing |

## 🧪 Approach

Smoke · Exploratory · Functional

**Environment:** Linux Mint (XFCE) · Brave 1.93.138 · Desktop

## 📄 Documents

| Document | Description |
|----------|-------------|
| [Test Plan](./test-plan.md) | Objective, scope, strategy, environment, entry and exit criteria |
| [Test Cases](./test-cases.md) | 5 test cases (link, share buttons, text formatting, image, console errors) |
| [Bug Reports](./bug-reports.md) | 5 detailed bug reports with evidence and a summary table |

## 📊 Results

| Metric | Value |
|--------|:-----:|
| Test cases | 5 (all failed, each linked to a bug) |
| Bugs reported | 5 |
| 🔴 High | 1 |
| 🟠 Medium | 2 |
| 🟡 Low | 2 |

## 🐛 Bugs Found

| ID | Title | Severity | Priority |
|----|-------|:--------:|:--------:|
| BUG-001 | Stretched line and merged words in the first paragraph | Low | Low |
| BUG-002 | Image not showing below the second paragraph | Medium | Medium |
| BUG-003 | "Archaeological Studies" page returns **404** | **High** | **High** |
| BUG-004 | Share buttons do nothing when clicked | Medium | Medium |
| BUG-005 | Cloudflare Insights script blocked in the console | Low | Low |

## 🔍 Highlights

- **BUG-003:** a link in the article leads to a 404 page, confirmed in the Console and Network tabs.
- **BUG-002:** the image request (`article-eldoria-1.webp`) returns 404, which I traced from the broken image through Elements, Console, and Network.
- **BUG-005:** I investigated an "unknown" console error in the Sources tab and found it was an analytics script blocked by the browser (`ERR_BLOCKED_BY_CLIENT`). I reported it as a low-impact observation that should be re-tested with Shields off.

## 💡 Lessons Learned

- A console error is not always a site defect. Checking the error type (here, a client-side block) changes how a bug should be classified.
- Every bug needs a test case behind it, so I linked each bug to one.

## ➡️ What I'd Test Next

- Re-test BUG-005 with Brave Shields disabled.
- Run the same checks in Chrome and Firefox, and on mobile.
- Check every other link on the page, not only the one in the second paragraph.
- Check image alt text and basic accessibility.

## 🛠️ Tools Used

Brave DevTools (Elements, Console, Network, Sources) · Screenshots · Screen recording
