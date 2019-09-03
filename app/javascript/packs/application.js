import "bootstrap";
import initNotificationButtons from './notification_buttons';
import initTabs from './pull_out_tab';

initNotificationButtons();
initTabs();




import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/dark.css';
//const flatpickr = require("flatpickr");






flatpickr(".datepicker", {
	enableTime: true

});

