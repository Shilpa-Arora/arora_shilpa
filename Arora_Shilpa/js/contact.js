(function() {
	"use strict";
	var request;
	var form = document.querySelector("#userform");
	// basic check for XHR object
	if(window.XMLHttpRequest)
	{//new browsers // code for IE7+, Firefox, Chrome, Opera, Safari
		request = new XMLHttpRequest();
	} 
	
	else if(window.ActiveObject){
//older browser // code for IE6, IE5
request = new ActiveObject("Microsoft.XMLHTTP");
	}
	
	else if(request===null)
	{
		alert("please upgade your browser");
		return;
	}



	//evt handler
	function regForm(e){
		e.preventDefault(); // prevent default behaviour, no submit
		var thisform = e.currentTarget;// gives access to form
		//console.log(thisform.elements);
	//console.log(thisform.elements.lname.value);
	var formdata = 
	"lname=" + thisform.elements.lname.value +
	"&fname=" + thisform.elements.fname.value +
	"&email=" + thisform.elements.email.value;

	console.log(formdata);
	var url = "user.php";
	request.onreadystatechange = formSubmitted;
	request.open("POST", url, true);
	request.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	request.send(formdata);

	//reset the form when it has been submitted.
		form.reset();
	}
	function formSubmitted () {
		if(request.readyState === 4 || request.readyState==="complete"){
			document.querySelector("#feedback").innerHTML = request.responseText;

		}
	}



	form.addEventListener("submit", regForm, false); //regform is an event handler and  event object is created
		
	

})();


