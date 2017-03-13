// Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized.
//
// Examples:
//
// // returns "theStealthWarrior"
// toCamelCase("the-stealth-warrior")
//
// // returns "TheStealthWarrior"
// toCamelCase("The_Stealth_Warrior")

function toCamelCase(str){
  str = str.split(/[-_]/);
  for(var i = 1;i < str.length;i++){
    str[i] = str[i].charAt(0).toUpperCase().concat(str[i].slice(1));
  }
  return str.join("");
}


function toCamelCase(str){
  let regExp=/[-_]\w/ig;
  return str.replace(regExp,function(match){
    return match.charAt(1).toUpperCase();
  });
}
