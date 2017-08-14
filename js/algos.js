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


//initialize function  with key, valur pair obj1 ansd obj2
//for  each obj1 and obj2
//compare to see if keys match
//compare to see if values match
//return true or false

function find_kv_match(obj1, obj2) {
    for (var i = 0; i < Object.keys(obj1).length; i++) {
        for (var j = 0; j < Object.keys(obj2).length; j++) {
            if (Object.keys(obj1)[i] == Object.keys(obj2)[j]) {
                if (Object.values(obj1)[i] == Object.values(obj2)[j]) {
                    return true;
                }
            }
        }
    }
        return false;
}

console.log(find_kv_match({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(find_kv_match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));

