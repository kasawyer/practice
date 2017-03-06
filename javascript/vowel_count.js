// Return the number (count) of vowels in the given string.

//first pass at a solution
function getCount(str) {
  var vowelsCount = 0;
  for (var i = 0; i <= str.length - 1; i++) {
    if (str.charAt(i) == "a" || str.charAt(i) == "e" || str.charAt(i) == "i" || str.charAt(i) == "o" || str.charAt(i) == "u") {
      vowelsCount += 1;
    }
  }
  return vowelsCount;
}

//better solution
function getCount(str) {
  var vowelsCount = 0;
  return str.replace(/[^aeiou]/gi, '').length;
}
