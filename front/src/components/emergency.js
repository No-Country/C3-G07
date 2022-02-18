const d = document;

/**
 * Emergency component
 * @returns {Node} Emergency component
 */
function emergency() {
  const $main = d.getElementById("main");
  const $emergencySection = d.createElement("section");

  $emergencySection.classList.add("emergency");

  $emergencySection.innerHTML = `
  <h2 class="emergency__title">Emergencias</h2>
  <p class="emergency__paragraph">0810-555-1661</p>  
`;

  return $main.appendChild($emergencySection);
}

export default emergency;
