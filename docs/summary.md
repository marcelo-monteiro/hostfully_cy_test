# Summary

## **Summary of Findings:**

- New computers are not being saved in the database.
- Error alerts are not user-friendly; they should help users understand the error in the field and not expose embedded functions.
- There is no way to clear filters after applying them, except by changing the URL.

To report the database issue, I would describe it as follows:

----------------------------------------------------------------

## Title: New Computers Not Being Added to the Database

## Details

The process of adding a new computer is not being executed correctly on the backend.

## Problem

After filling out the form and clicking the "Add New Computer" button, the user receives a success message and is redirected to the home page. However, the newly added computer cannot be found in the database.

### What's the Impact

No new computers are being added to the database, rendering the data unreliable.

### How to Reproduce

To replicate the issue, perform the action of adding a new computer via the UI:

- Access the homepage: https://computer-database.gatling.io/computers.
- Navigate to the "Add New Computer" page by clicking the "Add a New Computer" button.
- Fill out the form with valid data and click the "Create This Computer" button.
- After being redirected to the homepage, use the filter to search for the computer by name. It is also noticeable that the total count of computers in the database remains unchanged (574 computers).

### What Is Expected

The computer should be saved in the database and retrievable after performing the action of adding a new computer.

Additional information such as images, links to reports, and logs would also be included here.

--------------------------------------------------------------

## **Approach and Decision Making**

I opted to use an older version of Cypress due to some adjustments required to integrate my current tools (like Cucumber and Allure report). Addressing these integration issues would demand more effort than conducting the test itself. I prefer the BDD structure, which is friendlier for non-technical team members.

For this approach to testing, I would prefer to conduct backend tests using API requests (utilizing tools like Postman) because it's a faster and more reliable way to check database content.

Then, I would test the GUI using a similar approach as described here.