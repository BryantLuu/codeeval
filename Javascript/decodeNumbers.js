function bryantFunction(input) {
  var myArr = input.split(',');
  var answer = parseInt(myArr[1]);
  var toadd = parseInt(myArr[1]);
  var toSmall = true;

  while (toSmall === true){
    toSmall = false;
  if(parseInt(myArr[0]) > answer){
    answer += toadd;     
    }
  }
  return answer;
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(bryantFunction(line));
    }
});