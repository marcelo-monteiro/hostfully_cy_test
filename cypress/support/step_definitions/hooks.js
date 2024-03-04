// Import YAML parser for reading YAML files
const YAML = require('yamljs')
// Import 'Before' hook from Cypress Cucumber preprocessor for setting up preconditions before tests
const { Before } = require("@badeball/cypress-cucumber-preprocessor");

// Define a 'Before' hook that runs before each test scenario
Before( () => {
    // Read the 'dictionary.yaml' file from the 'cypress/fixtures' directory
    cy.readFile('cypress/fixtures/dictionary.yaml').then(content => {
        // Parse the YAML file content into a JavaScript object
        const dictionary = YAML.parse(content)
        // Wrap the dictionary object and store it as a reusable Cypress alias named 'elementsDictionary'
        // This allows the dictionary to be accessed in subsequent test steps
        cy.wrap(dictionary).as('elementsDictionary')
    });
 })
