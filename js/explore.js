//function takes as string
//break each character into a array with .split("")
//reverse order of array(first to last) with .reverse()
//put sting back together with .join("")
//print string to console

function reverseString(str){
	return str.split("").reverse().join("");
}

var result = true;

var reverseword = reverseString("hello");

if (result) {
	console.log(reverseword);
}

