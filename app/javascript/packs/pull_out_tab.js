const initTabs = () => {
  const tabButton = document.querySelector(".button-pull-out");
  const panel = document.querySelector(".pull-out-banner");
  if (panel) {
    tabButton.addEventListener("click", (event) => {
      console.log(panel)
      panel.classList.toggle("active");
    })
  }
}

export default initTabs;
