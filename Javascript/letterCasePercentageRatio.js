function myFunction(input) {
  var lowerCounter = 0;
  var upperCounter = 0;
  var lowerPercent, upperPercent;

  for (var i = 0; i < input.length; i++){
    if (input[i] === input[i].toLowerCase()){
      lowerCounter++;
    } else {
      upperCounter++;
    }
    
  }
  lowerPercent = (lowerCounter/(lowerCounter+upperCounter)*100).toFixed(2);
  upperPercent = (upperCounter/(lowerCounter+upperCounter)*100).toFixed(2);
  return "lowercase: " + lowerPercent + " uppercase: " + upperPercent
  

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});