function myFunction(input) {
  var myArr = input.split(' ');
  var longestWord = myArr[0];

  for (var i = 0; i < myArr.length; i++){
    if (longestWord.length < myArr[i].length)
      longestWord = myArr[i];
  }
  return longestWord;
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});