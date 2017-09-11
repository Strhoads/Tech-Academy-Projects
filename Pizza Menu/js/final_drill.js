function getReceipt() {
		var text1 = "<h3>You Ordered:</h3>";
		var runningTotal = 0;
		var sizeTotal = 0;
		var sizeArray = document.getElementsByClassName("size")
		for (var i = 0; i < sizeArray.length; i++) {
			if (sizeArray[i].checked) {
				var selectedSize = sizeArray[i].value;
				text1 = text1+selectedSize+"<br>";
		}
	}
	if (selectedSize === "Personal") {
		sizeTotal = 6;
	} else if (selectedSize === "Medium") {
		sizeTotal = 10;
	} else if (selectedSize === "Large") {
		sizeTotal = 14;
	} else if (selectedSize === "Extra Large") {
		sizeTotal = 16;
	}
	runningTotal = sizeTotal;
	console.log(selectedSize+" + $"+sizeTotal+".00");
	console.log("size text1: "+text1);
	console.log("subtotal: $"+runningTotal+".00");
	getCheese(runningTotal,text1);
};

function getCheese(runningTotal,text1)  {
	var cheeseTotal = 0;
	var cheeseArray = document.getElementsByClassName("cheese");
	for (var j = 0; j < cheeseArray.length; j++) {
		if (cheeseArray[j].checked) {
			var selectedCheese = cheeseArray[j].value;
			text1 = text1+cheeseArray[j].value+"<br>";
		}
	}
	if (selectedCheese === "No Cheese") {
		cheeseTotal = 0;
	} else if (selectedCheese === "Regular") {
		cheeseTotal = 0;
	} else if (selectedCheese === "Extra Cheese") {
		cheeseTotal = 3;
	}
	runningTotal = (runningTotal + cheeseTotal);
	console.log(selectedCheese+" + $"+cheeseTotal+".00");
	console.log("cheese text1:" + text1);
	console.log("subtotal: $"+runningTotal+".00");
	getCrust(runningTotal,text1);
};

function getCrust (runningTotal, text1) {
	var crustTotal = 0;
	var crustArray = document.getElementsByClassName("crust");
	for (var k = 0; k < crustArray.length; k++) {
		if (crustArray[k].checked) {
			var selectedCrust = crustArray[k].value;
			text1 = text1+crustArray[k].value+"<br>";
		}
	}
	if (selectedCrust === "plain") {
		crustTotal = 0;
	} else if (selectedCrust === "Garlic Butter Crust") {
		crustTotal = 0;
	} else if (selectedCrust === "Cheese Stuffed Crust") {
		crustTotal = 3;
	} else if (selectedCrust === "Spicy Crust") {
		crustTotal = 0;
	} else if (selectedCrust === "House Special Crust") {
		crustTotal = 0;
	}
	runningTotal = (runningTotal + crustTotal);
	console.log(selectedCrust+" + $"+crustTotal+".00");
	console.log("crust text1:"+text1);
	console.log("subtotal: $"+runningTotal+".00");
	getSauce(runningTotal,text1);
};

function getSauce(runningTotal,text1) {
	var sauceTotal = 0;
	var sauceArray = document.getElementsByClassName("sauce");
	for (var l = 0; l < sauceArray.length; l++) {
		if (sauceArray[l].checked) {
			var selectedSauce = sauceArray[l].value;
			text1 = text1+sauceArray[l].value+"<br>";
		}
	}
	if (selectedSauce === "Maranara Sauce") {
		sauceTotal = 0;
	} else if (selectedSauce === "White Sauce") {
		sauceTotal = 0;
	} else if (selectedSauce === "Barbeque Sauce") {
		sauceTotal = 0;
	} else if (selectedSauce === "No Sauce") {
		sauceTotal = 0;
	}
	runningTotal = (runningTotal + sauceTotal);
	console.log(selectedSauce+" + $"+sauceTotal+".00");
	console.log("sauce text1:"+text1);
	console.log("subtotal: $"+runningTotal+".00");
	getVeggies(runningTotal,text1);
};

function getVeggies(runningTotal,text1) {
	var veggieTotal = 0;
	var selectedVeggies =[];
	var veggieArray = document.getElementsByClassName("veggies");
	for (var m = 0; m < veggieArray.length; m++) {
		if (veggieArray[m].checked) {
			selectedVeggies.push(veggieArray[m].value);
			console.log("selected veggie item: ("+veggieArray[m].value+")");
			text1 = text1+veggieArray[m].value+"<br>";
		}
	}
	var veggieCount = selectedVeggies.length;
	if (veggieCount > 1) {
		veggieTotal = (veggieCount - 1);
	} else {
		veggieTotal = 0;
	}
	runningTotal = (runningTotal + veggieTotal);
	console.log("total selected veggie items: "+veggieCount);
	console.log(veggieCount+" veggie - 1 free veggie = "+"$"+runningTotal+".00");
	console.log("veggie text1: "+text1);
	getMeat(runningTotal,text1);
};

function getMeat(runningTotal,text1) {
	var meatTotal = 0;
	var selectedMeat = [];
	var meatArray = document.getElementsByClassName("meat");
	for (var n = 0; n < meatArray.length; n++) {
		if (meatArray[n].checked) {
			selectedMeat.push(meatArray[n].value);
			console.log("selected meat item: ("+meatArray[n].value+")");
			text1 = text1+meatArray[n].value+"<br>";
		}
	}
	var meatCount = selectedMeat.length;
	if (meatCount > 1) {
		meatTotal = (meatCount - 1)
	} else {
		meatTotal = 0;
	}
	runningTotal = (runningTotal + meatTotal);
	console.log("total selected meat items: "+meatCount);
	console.log(meatCount+" meat - 1 free meat = "+"$"+runningTotal+".00");
	console.log("meat text1: "+text1);
	console.log("purchase total: "+"$"+runningTotal+".00");
	document.getElementById("text").innerHTML=text1;
	document.getElementById("price").innerHTML= "</h3>Total: <strong>$"+runningTotal+".00"+"</strong></h3>";
};