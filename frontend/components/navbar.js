const template = document.createElement("template");
template.innerHTML = `
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
crossorigin="anonymous"
/>
<nav class="navbar navbar-dark navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <div class="navbar-brand mx-4 fs-4 fw-bold fst-italic">iBook</div>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#navbarScroll"
      aria-controls="navbarScroll"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 120px">
        <li class="nav-item mx-3">
          <a class="nav-link active" aria-current="page" href="index.html">Home</a>
        </li>
        <li class="nav-item mx-3">
          <a class="nav-link" href="sell.html">Sell</a>
        </li>
        <li class="nav-item mx-3">
          <a class="nav-link" href="discussion.html">Discussion</a>
        </li>
      </ul>
      <form class="d-flex">
        <input
          class="form-control me-2"
          type="search"
          placeholder="Search"
          aria-label="Search"
          style="width: 580px"
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
      <ul class="navbar-nav ms-auto me-5">
        <li class="nav-item dropdown">
          <a
            class="nav-link dropdown-toggle"
            href="http://localhost:3000/auth/google"
            id="navbarDropdown"
            role="button"
            data-bs-toggle="dropdown"
            aria-expanded="false"
          >
            Sign in
          </a>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Profile</a></li>
            <li><a class="dropdown-item" href="#">Log out</a></li>
          </ul>
        </li>
      </ul>
      <div class="">
        <a class="navbar-brand fs-5 me-2" href="#">
          <i class="fa fa-shopping-cart" style="font-size: 28px"></i>
          Cart
        </a>
      </div>
    </div>
  </div>
</nav>
`;

class NavBar extends HTMLElement {
  constructor() {
    super();
  }

  connectedCallback() {
    const shadowRoot = this.attachShadow({ mode: "open" });
    shadowRoot.appendChild(template.content);
  }
}
customElements.define("custom-navbar", NavBar);
