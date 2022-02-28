const d = document;

/**
 * Top bar component
 * @param {btnToggle} string Hamburger menu selector
 * @returns {void}
 */
function topBar(btnToggle) {
  d.addEventListener("click", (e) => {
    /* button toggle */
    if (e.target.matches(btnToggle) || e.target.matches(`${btnToggle} *`)) {
      d.querySelector(".menu").classList.toggle("menu--active");
      d.querySelector(".header__toggle i").classList.toggle("fa-times");
    } else {
      d.querySelector(".menu").classList.remove("menu--active");
      d.querySelector(".header__toggle i").classList.remove("fa-times");
    }
  });
}

export default topBar;
