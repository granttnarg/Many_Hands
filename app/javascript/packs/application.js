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



// document.querySelectorAll("#myTab > li > a").addEventListener("click", (event) => {
//   document.querySelector("")
// })




const tabs = document.querySelectorAll('.tab-content');
// const index = 0;
tabs.forEach((tab) => {

  const spotTabs = tab.querySelectorAll('.tab-pane');
  spotTabs[0].classList.add('show', 'active');
  // console.log(spotTabs[0]);

//   const navTabs = document.querySelectorAll('.nav-tabs');
//   // console.log(navTabs);
//   navTabs.forEach((navTab) => {
//     // console.log(navTab)
//     const tabLinks = navTab.querySelectorAll('.nav-link');
//     // console.log(tabLinks);
//     // tabLinks[1]
//     tabLinks.forEach((tabLink) =>{
//       tabLink.addEventListener('click', (event) => {
//         const myTab = document.querySelector('.show.active');
//         // console.log(myTab);
//         myTab.classList.remove('show', 'active');
//         if (spotTabs[1] !== 'undefined') {
//           console.log("hello");
//         spotTabs[1].classList.add('show', 'active');

//         }

//       });
//     });

//   })


});
// console.log(tabs[0]);




