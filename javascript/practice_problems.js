// Jaden Smith, the son of Will Smith, is the star of films such as The Karate Kid (2010) and After Earth (2013). Jaden is also known for some of his philosophy that he delivers via Twitter. When writing on Twitter, he is known for almost always capitalizing every word.
//
// Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.

// first solution
String.prototype.toJadenCase = function (string) {
  var words = this.valueOf().split(' ');
  for (var i = 0; i < words.length; i++) {
    words[i] = words[i].charAt(0).toUpperCase() + words[i].substr(1);
  }
  return words.join(' ').trim();
};

// cleaner solution
String.prototype.toJadenCase = function () {
  return this.split(" ").map(function(word){
    return word.charAt(0).toUpperCase() + word.slice(1);
  }).join(" ");
};


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


// You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.
// Examples:
// Kata.getMiddle("test") should return "es"
// Kata.getMiddle("testing") should return "t"
// Kata.getMiddle("middle") should return "dd"
// Kata.getMiddle("A") should return "A"

function getMiddle(s)
{
  if (s.length % 2 == 1) {
    return s[s.length/2 - 0.5];
  } else {
    return s[s.length/2 - 1] + s[s.length/2];
  }
}


// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//
// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
//
// Note: If the number is a multiple of both 3 and 5, only count it once.

function solution(number){
  let total = 0;
  for (var i = 0; i < number; i++) {
    if (i % 3 === 0 || i % 5 === 0)
    {
      total += i;
    }
  }
  return total;
}
