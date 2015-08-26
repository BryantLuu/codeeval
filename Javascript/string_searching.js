function myFunction(input) {

  myArr = input.split(',');
  var reg = new RegExp(myArr[1], 'g');
  
  // var res = myArr[1].replace("*", "\\*")
  res = myArr[0].match(reg);
  return res;
  

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});