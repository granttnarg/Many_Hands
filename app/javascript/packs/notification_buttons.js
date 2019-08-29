const initNotificationButtons = () => {
  const forms = document.querySelectorAll(".status-form");
  if (forms) {
    forms.forEach((form) => {
      const buttons = form.querySelectorAll(".button");
      const input = form.querySelector('.status-input');
      const submit = form.querySelector('.submit');
      buttons.forEach((button) => {
        button.addEventListener('click', (event) => {
          event.preventDefault();
          input.value = button.dataset.value;
          submit.click();
        });
      });
    });
  }
}
export default initNotificationButtons;
