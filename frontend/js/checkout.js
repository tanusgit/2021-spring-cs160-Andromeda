/**
 * onClick listener for clear cart button
 */
$(document).ready(function () {
  $("#clear-cart-btn").click(function () {
    window.localStorage.clear();
    window.location.reload();
  });
});

function getOrderFromLocalStorage() {
  for (var i = 0; i < localStorage.length; i++) {
    var book = JSON.parse(
      localStorage.getItem(localStorage.key(i))
    );
    jQuery(document).ready(function () {
      $(".order-section").prepend(`
      <div class="row py-3">
      <div class="col-md-3 d-flex justify-content-center align-items-center">
        <img class="order-section-book-img img-thumbnail" src="home.jpg" />
        <span class="badge rounded-pill bg-danger align-self-start badge">${book.count}</span>
      </div>
      <div class="col-md-4 d-flex justify-content-center align-items-center">${book.title}</div>
      <div class="col-md-5 d-flex justify-content-end align-items-center">$${book.price}</div>
    </div>`);
    });
  }
}

function getPrice() {
  var subTotal = 0;
  var total = 0;
  var tax = 0;

  for (var i = 0; i < localStorage.length; i++) {
    var book = JSON.parse(
      localStorage.getItem(localStorage.key(i))
    );
    subTotal += book.price * book.count;
  }
  tax = subTotal * 0.0725;
  total = tax + subTotal;
  tax = tax.toFixed(2);
  total = total.toFixed(2);
  subTotal = subTotal.toFixed(2);
  jQuery(document).ready(function () {
    $(".order-section-subtotal-price").text(`$${subTotal}`);
    $(".order-section-tax-price").text(`$${tax}`);
    $(".order-section-total-price").text(`$${total}`);
  });
}

function dataLoader() {
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
  addOrderToLocalStorage(book);
  addOrderToLocalStorage(book);
  addOrderToLocalStorage(book2);
}

/**
 * Localstorage stores item as {item_id : item}
 */
function addOrderToLocalStorage(book) {
  var id = book.id;
  if (localStorage.getItem(id) === null) {
    book.count = 1;
    localStorage.setItem(id, JSON.stringify(book));
  } else {
    var book = JSON.parse(localStorage.getItem(id));
    book.count = book.count + 1;
    localStorage.setItem(id, JSON.stringify(book));
  }
}

dataLoader();
getOrderFromLocalStorage();
getPrice();
