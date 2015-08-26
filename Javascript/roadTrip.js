function myFunction(input) {
  var array = input.split(' ');
  var hash = {};
  var string = '';
  var count = 0;

  for (var i=0; i<array.length; i++){
    count++;
    if (array[i] != array[i+1]){
      string += count + ' ';
      string += array[i] + ' ';
      count = 0;
    }
  }

  return string.trim();
  
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});