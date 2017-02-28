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


// The new "Avengers" movie has just been released! There are a lot of people at the cinema box office standing in a huge line. Each of them has a single 100, 50 or 25 dollars bill. A "Avengers" ticket costs 25 dollars.
//
// Vasya is currently working as a clerk. He wants to sell a ticket to every single person in this line.
//
// Can Vasya sell a ticket to each person and give the change if he initially has no money and sells the tickets strictly in the order people follow in the line?
//
// Return YES, if Vasya can sell a ticket to each person and give the change. Otherwise return NO.

function tickets(peopleInLine){
  let number25s = 0, number50s = 0;
  for(var i = 0; i < peopleInLine.length; i++){
    if (peopleInLine[i] == 25) {
      number25s += 1;
    }
    if (peopleInLine[i] == 50) {
      number25s -= 1;
      number50s += 1;
    }
    if (peopleInLine[i] == 100) {
      if (number50s === 0 && number25s >= 3) {
        number25s -= 3;
      } else {
        number25s -= 1;
        number50s -= 1;
      }
    }
    if (number25s < 0 || number50s < 0) {
       return 'NO';
    }
  }
  return 'YES';
}
