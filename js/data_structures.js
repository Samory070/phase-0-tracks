//Release 1

var horses = ["Ed", "Erika", "Peter", "Roger"];
var colors = ["red", "blue", "green", "yellow"];

horses.push("Anthony");
colors.push("pink");

// console.log(horses);
// console.log(colors);

var barn = {};

barn["Samory"] = "dark-blue";

for (var i = 0; i < colors.length; i++ ) {
barn[horses[i]] = colors[i];
}
//displays barn contents 
// console.log(barn);

//displays barn keys
// console.log(Object.keys(barn));

//displays content values
for (var values in barn){
  if (barn.hasOwnProperty(values)) {
    console.log(barn[values]);
  }
}
