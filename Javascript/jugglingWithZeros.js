function myFunction(input) {

  var str = ''
  var myArray = input.split(' ');
  var number = myArray.length
    
  for (var i = 0; i < number/2; i++) {
    if (myArray[0] == '0'){
      for (var j = 0; j < myArray[1].length; j++){
        str += 0;
      }
      myArray.splice(0,2);
    } else {
      for (var j = 0; j < myArray[1].length; j++){
        str += 1;
      } 
      myArray.splice(0,2);    
      }
  }
  return parseInt(str, 2);
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});