function coolFunction(input) {
  var str = ""
  var line = input.split(' ');
  for (var i = 0; i < line.length/2; i++){
    temp = line[i];
    line[i] = line[line.length-1-i];
    line[line.length-1-i] = temp;
  }
  
  for (var j = 0; j < line.length;j++){
    str += line[j] + " ";
  }

  var answer = str.trim();
  return answer;

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(coolFunction(line));
    }
});