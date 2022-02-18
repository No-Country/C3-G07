const d = document;

/**
 * Hero component
 * @returns {Node} Hero component
 */
function heroSection() {
  const $main = d.getElementById("main");
  const $heroSection = d.createElement("section");

  $heroSection.classList.add("hero");

  $heroSection.innerHTML = `
  <h1 class="hero__title">Bienvenidos a clínica Pérez</h1>

  <p class="hero__paragraph">
    Ponemos a su disposción nuestra atención personalizada
    y lo último en equipamiento oftalmológico
  </p>

   <button class="btn btn--turno" type="submit">Pedir turno</button>
`;

  return $main.appendChild($heroSection);
}

export default heroSection;
