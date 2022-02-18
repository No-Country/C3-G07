import main from "./components/main_layout.js";
import topBar from "./components/top_bar.js";

const d = document;

/* render components */
d.addEventListener("DOMContentLoaded", (e) => {
  topBar("#toggle");
  main();
});
