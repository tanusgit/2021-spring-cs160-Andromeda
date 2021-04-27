context("Actions", () => {
  beforeEach(() => {
    cy.visit("http://127.0.0.1:5500/checkout.html");
  });

  describe(".type() - type into payment form", () => {
    it("test credit card number input", () => {
      cy.get('input[id="ccn"]')
        .type("3700 0000 0000 002")
        .should("have.value", "3700 0000 0000 002");
    });

    it("test credit card date input", () => {
      cy.get('input[id="date"]')
        .type("12/2020")
        .should("have.value", "12/2020");
    });

    it("test credit card name input", () => {
      cy.get('input[id="name"]')
        .type("Steven W")
        .should("have.value", "Steven W");
    });

    it("test credit card csv input", () => {
      cy.get('input[id="csv"]')
        .type("123")
        .should("have.value", "123");
    });
  });

  describe(".type() - type into address form", () => {
    it("test address form firstname input", () => {
      cy.get('input[id="firstname"]')
        .type("Steven")
        .should("have.value", "Steven");
    });

    it("test address form lastname input", () => {
      cy.get('input[id="lastname"]')
        .type("William")
        .should("have.value", "William");
    });

    it("test address form address input", () => {
      cy.get('input[id="address"]')
        .type("1 Washington Sq")
        .should("have.value", "1 Washington Sq");
    });

    it("test address form city input", () => {
      cy.get('input[id="city"]')
        .type("San Jose")
        .should("have.value", "San Jose");
    });

    it("test address form country input", () => {
      cy.get('input[id="Country"]')
        .type("U.S.")
        .should("have.value", "U.S.");
    });

    it("test address form postal input", () => {
      cy.get('input[id="Postal"]')
        .type("95123")
        .should("have.value", "95123");
    });

    it("test address form phone input", () => {
      cy.get('input[id="phone"]')
        .type("408-123-123")
        .should("have.value", "408-123-123");
    });
  });

  describe("Test checkout items from localstorage", () => {
    beforeEach(() => {
      window.localStorage.clear();
      let book = {
        id: 1,
        isbn: "419386412-X",
        publisher_name: "Brigida Gorry",
        author_name: "Lucienne Rivenzon",
        year: 1988,
        title: "The Stoker",
        price: 803.85,
        user_id: 1,
      };

      var book2 = {
        id: 2,
        isbn: "419386212-X",
        publisher_name: "Brigida Gorry",
        author_name: "Lucienne Rivenzon",
        year: 1988,
        title: "Object-Oriented Design",
        price: 200.85,
        user_id: 1,
      };

      function addOrderToLocalStorage(book) {
        var id = book.id;
        if (window.localStorage.getItem(id) === null) {
          book.count = 1;
          window.localStorage.setItem(
            id,
            JSON.stringify(book)
          );
        } else {
          var book = JSON.parse(localStorage.getItem(id));
          book.count = book.count + 1;
          window.localStorage.setItem(
            id,
            JSON.stringify(book)
          );
        }
      }
      addOrderToLocalStorage(book);
      addOrderToLocalStorage(book);
      addOrderToLocalStorage(book2);
    });

    afterEach(() => {
      window.localStorage.clear();
    });

    it("Data should exists in localstorage", () => {
      expect(localStorage.getItem("1")).not.null;
      expect(localStorage.getItem("2")).not.null;
    });

    it("Data should match in localstorage", () => {
      expect(localStorage.getItem("1")).to.deep.equal(
        JSON.stringify({
          id: 1,
          isbn: "419386412-X",
          publisher_name: "Brigida Gorry",
          author_name: "Lucienne Rivenzon",
          year: 1988,
          title: "The Stoker",
          price: 803.85,
          user_id: 1,
          count: 2,
        })
      );
      expect(localStorage.getItem("2")).to.deep.equal(
        JSON.stringify({
          id: 2,
          isbn: "419386212-X",
          publisher_name: "Brigida Gorry",
          author_name: "Lucienne Rivenzon",
          year: 1988,
          title: "Object-Oriented Design",
          price: 200.85,
          user_id: 1,
          count: 1,
        })
      );
    });

    it("Test total, subtotal and tax amount", () => {
      var subTotal = 0;
      var total = 0;
      var tax = 0;

      for (var i = 0; i < window.localStorage.length; i++) {
        var book = JSON.parse(
          window.localStorage.getItem(localStorage.key(i))
        );
        subTotal += book.price * book.count;
      }
      tax = subTotal * 0.0725;
      total = tax + subTotal;
      tax = tax.toFixed(2);
      total = total.toFixed(2);
      subTotal = subTotal.toFixed(2);

      expect(total).to.equal("1939.67");
      expect(subTotal).to.equal("1808.55");
      expect(tax).to.equal("131.12");
    });
  });
});
