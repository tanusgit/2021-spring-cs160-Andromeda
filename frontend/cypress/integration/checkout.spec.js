describe("TodoMVC", function () {
  beforeEach(function () {
    cy.visit("http::/localhost:8888/");
    cy.get(".new-todo").type("buy some cheese");
  });

  it.only("hide", function () {
    cy.get(".todolist li").should("not.exist");
  });
});
