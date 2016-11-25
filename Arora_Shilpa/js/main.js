(function() {
"use strict";


console.log("SEAF");
var displayRequest1=create();
var displayRequest2=create();
var displayRequest3=create();
var displayRequest4=create();
var displayRequest5=create();

if(displayRequest1&&displayRequest2&&displayRequest3&&displayRequest4&&displayRequest5===null)
		{ //subway car cannot be created, send use message.
			alert("Your Browser needs updating, does not support AJAX");
			return;
		}

function displayStarter()
{
	if(displayRequest1.readyState===4 || displayRequest1.readyState==="complete")
	 	{	var jsonout =displayRequest1.responseText;
			console.log(jsonout);
	
	

			document.querySelector("#starters").innerHTML = "<h3>" + jsonout.item_name + jsonout.Price + "</h3>";}
	 		/*document.querySelector("#starters").innerHTML = displayRequest1.responseText;*/

}
function displaySalads()
{
	if(displayRequest2.readyState===4 || displayRequest2.readyState==="complete")
	 	{	var jsonout = displayRequest2.responseText;
			console.log(jsonout);
			document.querySelector("#salads").innerHTML = "<h3>"+ jsonout.item_name + jsonout.Price +"</h3>"; 
	 		/*document.querySelector("#salads").innerHTML = displayRequest2.responseText;*/
	 	}
}
function displaySandwiches()
{
	if(displayRequest3.readyState===4 || displayRequest3.readyState==="complete")
	 	{	var jsonout = displayRequest3.responseText;
			console.log(jsonout);
			document.querySelector("#sandwiches").innerHTML = "<h3>"+ jsonout.item_name + jsonout.Price +"</h3>"; 
	 		/*document.querySelector("#sandwiches").innerHTML = displayRequest3.responseText;*/
	 	}
}
function displayPasta()
{
	if(displayRequest4.readyState===4 || displayRequest4.readyState==="complete")
	 	{	var jsonout = displayRequest4.responseText;
			console.log(jsonout);
			document.querySelector("#pasta").innerHTML = "<h3>"+ jsonout.item_name + jsonout.Price +"</h3>";
	 		/*document.querySelector("#pasta").innerHTML = displayRequest4.responseText;*/
	 	}
}
function displayDeserts()
{
	if(displayRequest5.readyState===4 || displayRequest5.readyState==="complete")
	 	{	var jsonout = displayRequest5.responseText;
			console.log(jsonout);
			document.querySelector("#deserts").innerHTML = "<h3>"+ jsonout.item_name + jsonout.Price +"</h3>";
	 		/*document.querySelector("#deserts").innerHTML = displayRequest5.responseText;*/
	 	}
}

	
					

				var url = "displayfood.php?custid=1";
				displayRequest1.onreadystatechange=displayStarter;
				displayRequest1.open("GET", url, true);
				displayRequest1.send(null);
								
				console.log("in case 2");		

				var url = "displayfood.php?custid=2";
				displayRequest2.onreadystatechange=displaySalads;
				displayRequest2.open("GET", url, true);
				displayRequest2.send(null);
				
				console.log("in case 3");		

				var url = "displayfood.php?custid=3";
				displayRequest3.onreadystatechange=displaySandwiches;
				displayRequest3.open("GET", url, true);
				displayRequest3.send(null);
				
				console.log("in case 4");		

				var url = "displayfood.php?custid=4";
				displayRequest4.onreadystatechange=displayPasta;
				displayRequest4.open("GET", url, true);
				displayRequest4.send(null);
				
				console.log("in case 5");		

				var url = "displayfood.php?custid=5";
				displayRequest5.onreadystatechange=displayDeserts;
				displayRequest5.open("GET", url, true);
				displayRequest5.send(null);
				
})();		
