const initTabs = () => {
  const tabButton = document.querySelector(".button-pull-out");
  const panel = document.querySelector(".pull-out-banner");
  console.log(tabButton);
  tabButton.addEventListener("click", (event) => {
    console.log(panel)
    panel.classList.toggle("active");
  })
}

export default initTabs;
