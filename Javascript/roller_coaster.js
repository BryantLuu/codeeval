function coasterFunction(input) {
  var regEx = /[a-zA-Z]/;
  var counter = 0;
  var str = "";
  for (var i = 0; i < input.length; i++){
    if (regEx.test(input[i])) {
      if (counter % 2 === 0){
        str += input[i].toUpperCase();
      } else {
        str += input[i].toLowerCase();
      }
      counter++;
    } else {
      str += input[i];  
    }
    
  }
  return str;
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(coasterFunction(line));
    }
});