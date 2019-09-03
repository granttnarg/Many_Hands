import "bootstrap";
import initNotificationButtons from './notification_buttons';
initNotificationButtons();


import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/dark.css';
//const flatpickr = require("flatpickr");






flatpickr(".datepicker", {
	enableTime: true
	
});
