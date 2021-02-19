import { Elm } from "./src/App.elm";

window.addEventListener("load", () => {
  const node = document.getElementById("app");
  try {
    Elm.App.init({ node });
  } catch (e) {
    console.log(e);
  }
});
