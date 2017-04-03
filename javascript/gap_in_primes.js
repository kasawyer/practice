function gap(g, m, n) {
  if (g & 1) {
    if (m > 2 || n < g + 2) return null;
    return isPrime(g + 2) ? [2, g + 2] : null;
  }
  var previous = null;
  for (var current = m | 1; current <= n; current += 2) {
    if (isPrime(current)) {
      if (current - previous === g)
        return [previous, current];
      previous = current;
    }
  }
  return null;

  function isPrime(n) {
    if (n <= 6)
      return n === 2 || n === 3 || n === 5;
    if (n & 1 === 0 || n % 3 === 0) return false;

    var limit = Math.floor(Math.sqrt(n));
    for (var t = 5; t <= limit; t += 6) {
      if (n % t === 0 || n % (t + 2) === 0)
        return false;
    }
    return true;
  }
}
