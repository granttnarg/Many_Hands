import "bootstrap";
import initNotificationButtons from './notification_buttons';
import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/dark.css';

import initTabs from './pull_out_tab';

initNotificationButtons();
initTabs();



//const flatpickr = require("flatpickr");


flatpickr(".datepicker", {
});

flatpickr(".timepicker", {
	enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    time_24hr: true
});
