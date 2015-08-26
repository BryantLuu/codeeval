function coolFunction(input) {
  var answer = input.toLowerCase();
  return answer;

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(coolFunction(line));
    }
});