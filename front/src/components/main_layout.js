const d = document;

/**
 * Main layout component
 * @returns {Node} Main layout component
 */
function main() {
  const $root = d.getElementById("root");
  const $main = d.createElement("main");

  $main.classList.add("main");
  $main.id = "main";

  return $root.appendChild($main);
}

export default main;
