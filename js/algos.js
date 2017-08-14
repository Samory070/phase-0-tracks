//take an array of strings
//compare phrase in array
//if length of element is greater than longest_word
 // store length of element in phrase_length

var phrase_array = ["long phrase","longest phrase","longer phrase"];


function longest_word(str) {

var longestWord = 0;
var phrase_length = 0;
  for(var i = 0; i < str.length; i++){
    if(str[i].length > longestWord){ 
	longestWord = str[i].length; 
	phrase_length = i;
     }
  }
  return longest_word[phrase_length];
}

console.log(longest_word("long phrase", "longest phrase","longer phrase"));



