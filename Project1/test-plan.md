## Test Plan – Realbugz "Article" Page

### Document Info
- **Application under test:** Realbugz – Article page (Eldoria article) – https://www.realbugz.com/en/task-article.html
- **Tester:** [Mustafa Ragab]
- **Test dates:** 2026-09-11 to 2026-09-12

### Objective
- Verify the functionality, usability, and integrity of the article page and identify defects.

### Scope
- Article content (text, images)
- Navigation (links)
- Interactive elements (buttons)
- Browser console and network errors on page load

### Out of Scope
- Performance and load testing
- Cross-browser and mobile testing (desktop Brave only)
- Backend / API testing
- Accessibility audit and security testing

### Test Strategy
- Smoke
- Exploratory
- Functional

### Environment
- OS: Linux Mint Zena XFCE
- Browser: Brave (Version: 1.93.138), default Shields settings
- Device: Desktop

### Test Data
- Article text: the first and second paragraphs
- In-text link: "Recent archaeological studies and satellite imagery analyses"
- The three share buttons at the end of the article
- Browser DevTools: Elements, Console, Network, Sources

### Entry Criteria
- The article page is reachable and loads.

### Exit Criteria
- All critical and high severity bugs are identified and documented.
- Application is stable for basic usage.

### Deliverables
- [Test cases](./test-cases.md)
- [Bug reports](./bug-reports.md)
