console.log("Console initiated");
function boldText(event) {
    // id.innerHTML = "Ooops!";
		event.target.style.fontWeight = "900";
		// document.getElementById("paragraph_id").style.fontWeight = "900";
}

function fontChange(event){
  event.target.style.fontFamily = "Helvetica";
}

function addBorder(event) {
	event.target.style.border = "2px dotted purple";
}
// hard coded
function addBlueBorder() {
  var blue_border = document.getElementById("paragraph_id4");  
blue_border.style.border = "2px dashed blue";  
}

function changeColor(event) {
	var colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"];
	var random_color = colors[Math.floor(Math.random()*colors.length)];
	event.target.style.color = random_color;
}

function keyUp() {
	var x = document.getElementById("name");
	x.value = x.value.toUpperCase();
}

function addTextWhenClicked() {
	document.getElementById("demo").innerHTML += "Clicked<br>";
}

function hide_image(event) {
  event.target.hidden = true;
}

function addNewElement(event) {
  console.log("Addin' a paragraph");
  var newParagraph = document.createElement("p"); // creates new paragraph
  var paraText = document.createTextNode("New paragraph added here!"); //creates new text
  newParagraph.appendChild(paraText); // adds text to paragraph
  var firstParagraph = document.getElementById("demo"); // sets var to empty div
  firstParagraph.appendChild(newParagraph); // add prargraph to div
}

var add_para = document.getElementById("paragraph_id");
add_para.addEventListener("click", addNewElement);

var paragraph1 = document.getElementById("paragraph_id");
paragraph1.addEventListener("mouseover", boldText);
paragraph1.addEventListener("mouseover", fontChange);

var paragraph2 = document.getElementById("paragraph_id2");
paragraph2.addEventListener("click", addBorder);

var paragraph3 = document.getElementById("paragraph_id3");
paragraph3.addEventListener("click", changeColor);

var button = document.getElementById("button");
button.addEventListener("click", addTextWhenClicked);

addBlueBorder();

var splash_img = document.getElementById("splash_img");
splash_img.addEventListener("click", hide_image);




