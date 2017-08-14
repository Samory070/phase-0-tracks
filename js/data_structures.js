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


//Release 2

function Car (make,model,year,color) {
  this.make = make;
  this.model = model;
  this.year = year;
  this.color = color;

this.antique =  function() {
  var antique = "";
  if (this.year <= 1992) {
    antique = "A classic car";
  } else if (this.year >= 2017) {
    antique = "A brand new car";
  } else {
    antique = "Used car";
  }
  return antique;
  };
}

var car1 = new Car("Honda","Accord", "2007", "Black");
console.log(car1);
console.log(car1.antique());
console.log(car1.make);

var car2 = new Car("Nissan", "Alitima", "1992", "Sparkily Blue");

//console.log(car2.color);

var car3 = new Car("Chevy", "Corvette", "2018", "Murdered Out");

console.log(car3.antique());
