<reference types="cypress" />;

context("Actions", () => {
  beforeEach(() => {
    cy.visit("http://127.0.0.1:5500/");
  });
});
