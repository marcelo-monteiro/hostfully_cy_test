# Automated Web Tests Suite with Cypress
This test suite runs only in a local environment.
The required Node.js version for running tests is >=18.16.1.
All dependencies must be installed locally:

```sh
yarn install
```
In this project, the reporter used is Allure. To install it, execute the following command:
```sh
yarn global add allure-commandline
```

**Tests Structure**

```sh
.
├── README.md
├── cypress
│   ├── e2e
│   │   └── add_new_computer_page.feature
│   ├── fixtures
│   │   ├── dictionary.yaml
│   │   └── example.json
│   ├── screenshots
│   ├── support
│   │   ├── commands.js
│   │   ├── e2e.js
│   │   └── step_definitions
│   │       ├── common_steps.js
│   │       ├── computer_page_steps.js
│   │       └── hooks.js
│   └── videos
├── cypress.config.js
├── package.json
└── yarn.lock

```

## Running Front-End Tests

All dependencies for tests are listed in `package.json`, which will be installed by running the yarn command.

All tests will be performed in the Chrome browser, defined as the default in `package.json` scripts. 

To perform front-end tests, please run the following commands in the root directory after installing all dependencies:

```sh
# Open Cypress to execute tests in the GUI 
$ yarn open 

# To run e2e tests headlessly and with an allure report
$ yarn tests:report
```

##### Maintainability

The tests were scripted using "dictionary.yaml" for selectors, to maintain an easy-to-update pattern when handling code changes.

#### Opening the Report

For the front-end test suite, the reports are generated using Allure (dependencies listed in `package.json`), but it requires JDK in order to open the report correctly.
After performing the front-end tests, executing the commands below will open the report in your browser:

```sh
# To open the report 
$ allure serve
```

## Next Steps

This project only tests features related to adding a new computer, but it could include more scenarios like finding the newly added computer, navigating the dashboard, etc.

This structure does not use complex solutions like OOP, componentization, and other design principles.
E.g., For the adding computer functionalities, it is possible to create a class to perform these methods and use them in the tests, avoiding duplicating code lines.

Also, it is possible to run these tests in an isolated environment using Docker, which is recommendable and more reliable for preventing environment errors, like dependencies and libraries.