function myFunction(input) {
  array = input.split(',');
  hash = {};
  for(var i=0; i<array.length; i++){
    if (typeof hash[array[i]] == 'undefined'){
      hash[array[i]] = 1;
    } else {
      hash[array[i]]++;
    }
  }


  for (var j in hash){
    if (hash[j] > (array.length/2)){
      return j;
    }
  }

  return "None";

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});