import "bootstrap";
import initNotificationButtons from './notification_buttons';
initNotificationButtons();


import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/dark.css';
//const flatpickr = require("flatpickr");






flatpickr(".datepicker", {
	enableTime: true
	
});

// $(document).ready(function(){
//   $(".category-choice").click(function(){
//     $(this).toggleClass("active");
//   });
// });



const categoryBtns = document.querySelectorAll('.category-choice')
categoryBtns.forEach((category) => {
	category.addEventListener("click", (event) => {

	});
});



console.log(categoryBtns);