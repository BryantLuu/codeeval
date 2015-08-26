function coolFunction(input) {

  var str = '';
  var myArray = input.split(' ');
  
  for (var i = 0; i < myArray.length; i++) {
    myArray[i] = parseInt(myArray[i]);
  }
  
  for (var j = 1; j <= myArray[2]; j++) {
    if (j % myArray[0] === 0 & j % myArray[1] === 0) {
      str += "FB";
    } else if (j % myArray[0] === 0) {
      str += "F";
    } else if (j % myArray[1] === 0) {
      str += "B"; 
    } else {
      str += j;
    }
    str += " ";
  }

  
  return str;

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(coolFunction(line));
    }
});