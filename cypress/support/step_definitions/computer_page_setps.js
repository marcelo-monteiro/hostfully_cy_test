const { Given, When, Then, Step } = require("@badeball/cypress-cucumber-preprocessor");

When('I enter {string} in the {string} field', (inputText, fieldName) => {
    cy.get('@elementsDictionary').then(elements => {
      cy.get(elements[fieldName]).click().clear().type(inputText);
    });
  });
  
  When('I select {string} from the {string} dropdown', (optionText, dropdownName) => {
    cy.get('@elementsDictionary').then(elements => {
      cy.get(elements[dropdownName]).select(optionText);
    });
  });
