const d = document;

/**
 * Top bar component
 * @returns {Node} nav element
 */
function topBar() {
  const $root = d.getElementById("root");
  const $topBar = d.createElement("nav");

  $topBar.classList.add("navigation");

  /* component */
  $topBar.innerHTML = `
    <ul class="main-nav" id="nav">
        <li class="nav-item">
            <a class="nav-item_link" routerLink="#">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-item_link" routerLink="#">Institucional</a>
        </li>
        <li class="nav-item">
            <a class="nav-item_link" routerLink="#">Especialidades</a>
        </li>
        <li class="nav-item">
            <a class="nav-item_link" routerLink="#">Profesionales</a>
        </li>
        <li class="nav-item">
            <a class="nav-item_link" routerLink="#">Contacto</a>
        </li>
    </ul>
`;

  return $root.appendChild($topBar);
}

export default topBar;
