function myFunction(input) {
  splitLine = input.split(';');
  words = splitLine[0].split(' ');
  positions = splitLine[1].split(' ');
  hash = {};
  string = ''
  for (var i = 0; i< positions.length; i++) {
    hash[positions[i]] = words[i];
  }
  var counter = -1
  for (var i = 1; i< words.length+1; i++) {
    if(hash[i] == undefined){
      string += words[words.length+counter];
      string += " ";
      counter --;
    } else {
      string += hash[i];
      string += " ";  
    }
    
  }
  return string;

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});