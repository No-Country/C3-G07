const d = document;

/**
 * Top bar component
 * @param {btnToggle} string Hamburger menu selector
 * @returns {Node} Top bar component
 */
function topBar(btnToggle) {
  const $root = d.getElementById("root");
  const $topBar = d.createElement("header");

  $topBar.classList.add("header");

  /* component */
  $topBar.innerHTML = `
  <div class="header__container">
    <div class="header__toggle" id="toggle">
        <i class="fas fa-bars"></i>
    </div>

    <nav class="menu">
        <ul class="menu__list">
            <li class="menu__item">
                <a class="menu__link" href="#" rel="noopener noreferrer">Nosotros</a>
            </li>
            <li class="menu__item">
                <a class="menu__link" href="#" rel="noopener noreferrer">Institucional</a>
            </li>
            <li class="menu__item">
                <a class="menu__link" href="#" rel="noopener noreferrer">Especialidades</a>
            </li>
            <li class="menu__item">
                <a class="menu__link" href="#" rel="noopener noreferrer">Contacto</a>
            </li>
        </ul>
    </nav>

    <a class="linked" href="index.html">
        <img class="linked__logo" loading="lazy" src="./src/assets/images/Logo.png" alt="logo clínica pérez" />
    </a>

    <button class="btn" type="submit">Ingresar</button>
  </div>  
`;

  d.addEventListener("click", (e) => {
    if (e.target.matches(btnToggle) || e.target.matches(`${btnToggle} *`)) {
      d.querySelector(".menu").classList.toggle("menu--active");
      d.querySelector(".header__toggle i").classList.toggle("fa-times");
    } else {
      d.querySelector(".menu").classList.remove("menu--active");
      d.querySelector(".header__toggle i").classList.remove("fa-times");
    }
  });

  return $root.appendChild($topBar);
}

export default topBar;
