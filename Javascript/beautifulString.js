function myFunction(input) {

  
  var match = input.replace(/[^a-zA-Z]+/g, '');
  var res = match.toLowerCase();
  var hash = {}
  var amountArray = [];
  var total = 0;

  for(var i = 0; i<res.length;i++) {
    if (typeof hash[res[i]] == 'undefined'){
      hash[res[i]] = 1;
    } else {
      hash[res[i]]++;
    }
  }
  for(key in hash){
    amountArray.push(hash[key]);
  }
  amountArray.sort(function(a, b){return b-a});
  var j = 26
  for(var i = 0; i<amountArray.length; i++){
    total += amountArray[i]*j;
    j--;
  }
  return total
  

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});