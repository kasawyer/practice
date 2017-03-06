// Given an integral number, determine if it's a square number:
//
// In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.
// The tests will always use some integral number, so don't worry about that in dynamic typed languages.

// first solution
var isSquare = function(n){
  if(n >= 0 && Math.sqrt(n) % 1 === 0) {
    return true;
  }
  return false;
};

// refactored solution
var isSquare = function(n){
  return n >= 0 && Math.sqrt(n) % 1 === 0;
};
