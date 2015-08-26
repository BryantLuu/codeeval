function myFunction(input) {

  var str = '';
  function findBinary(num){
    if(num == 0){
      return 
    } else {
      str += (num % 2);
      if (num % 2 == 0){
        remainder = (num / 2);
      } else {
        remainder = ((num-1)/2);
      }
      findBinary(remainder);
    }
  }
  if (input == 0){
    
    str = '0';
    return str;
  } else {

    findBinary(input);
    reversed = str.split("").reverse().join("");
    return reversed  
  }
  
  

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});