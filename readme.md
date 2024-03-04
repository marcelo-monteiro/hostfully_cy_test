# Automated Web Tests Suite with Cypress
These tests suit runs only in local environment.
Nodejs version required for running tests: >=18.16.1
All depencies must be installed locally:

```sh
yarn install
```
On this project the reporter used is Allure. To install it execute the following command:
```sh
yarn global add allure-commandline
```


**Tests Structure**

```sh
.
├── README.md
├── cypress
│   ├── e2e
│   │   └── add_new_computer_page.feature
│   ├── fixtures
│   │   ├── dictionary.yaml
│   │   └── example.json
│   ├── screenshots
│   ├── support
│   │   ├── commands.js
│   │   ├── e2e.js
│   │   └── step_definitions
│   │       ├── commom_steps.js
│   │       ├── computer_page_setps.js
│   │       └── hooks.js
│   └── videos
├── cypress.config.js
├── package.json
└── yarn.lock

```


## Running Front-End Tests

All dependencies for tests are listed in package.json, which will be installed running yarn command.

All tests will performed in Chrome browser, defined as default on package.json scripts. 

To perform front-end tests please run the following commands on the root directory, after installing all dependecies:

```sh
# Open Cypress to execute tests on GUI 
$ yarn open 

# To run e2e tests headless and with allure report
$ yarn tests:report
```

##### Maintainability

The tests were scripted using "dictionary.yaml" for selectors, to keep an easy-to-update pattern when handling code changes.

#### Opening the report

For front-end test suite, the reports are generated using Allure (depencies listed on package.json), but it requires JDK in order to open the report correctly.
After performing the front-end tests, executing the commands bellow, will open the report in your browser:

```sh
# To open report 
$ allure server
```

## Next Steps

This project only tests features related to adding new computer, but it could be added more scnearios like, finding the new computer recently added, navigating in the dashboard, etc.

This structure does not use complex solutions like OOO, componentization, and other design principles.
E.g: For the adding computer functionalities it is possible to create a Class to perform these methods and use them in the tests, without duplicating code lines.

Also is possible to run this tests in a isolated environment using Docker, which is recomendable and more reliable for preventing enviroments errors, like dependencies and libraries. 