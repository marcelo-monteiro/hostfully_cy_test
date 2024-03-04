const { Given, When, Then, Step } = require("@badeball/cypress-cucumber-preprocessor");

Given("I am on the {string}", URL => {
    cy.visit(URL)
  })

Given("I click in link {string}", function (selector) {
    cy.get('@elementsDictionary').then(elements => {
        cy.get(elements[selector]).dblclick()
    })
});

Given("I click in button {string}", function (selector) {
    cy.get('@elementsDictionary').then(elements => {
        cy.get(elements[selector]).dblclick()
    })
});

Given("I expect to see the message {string}", function (string) {
    cy.contains(string);
 });

 Then("I should return to homepage", function () {
    cy.url().should('eq', 'https://computer-database.gatling.io/computers');
  });