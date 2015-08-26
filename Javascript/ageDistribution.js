function myFunction(input) {

  if (input >= 66){
    return 'The Golden Years';
  } else if (input >= 23) {
    return 'Working for the man'
  } else if (input >= 19) {
    return 'College'
  } else if (input >= 15) {
    return 'High school'
  } else if (input >= 12) {
    return 'Middle school'
  } else if (input >= 5) {
    return 'Elementary school'
  } else if (input >= 3) {
    return 'Preschool Maniac'
  } else if (input >= 0) {
    return "Still in Mama\'s arms\'"
  }
  

}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") { // ignore empty lines
        console.log(myFunction(line));
    }
});