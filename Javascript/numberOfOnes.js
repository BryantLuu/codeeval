function myFunction(input) {

  var str = '';
  var count = 0;
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
    for (var i = 0; i<str.length;i++){
      if (str[i] == 1){
        count++;
      }
    }
    return count;  
  }
  
  

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});