function myFunction(testcase) {

  var stack = [];
  var hash = { '}':'{',')':'(',']':'[' };
     for (var i = 0; i < testcase.length; i++){
        if (testcase[i] == '{' || testcase[i] == '[' || testcase[i] == '('){
          stack.push(testcase[i]);
        }
        if (testcase[i] == '}' || testcase[i] == ']' || testcase[i] == ')'){
          if (stack.pop() != hash[testcase[i]]){
            return "False";
          }
        }
     }
     if (stack.length === 0){
       return "True";
     } else {
       return "False";
     }
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});