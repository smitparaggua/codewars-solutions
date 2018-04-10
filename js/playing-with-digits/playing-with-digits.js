function digitPow(base, startPow) {
  let sum = digits(base)
    .map((digit, index) => Math.pow(digit, startPow + index))
    .reduce((acc, cur) => acc + cur)
  return sum % base === 0 ? sum / base : -1;
}

function digits(num, acc = []) {
  if (num < 10) {
    acc.unshift(num)
    return acc
  }
  acc.unshift(num % 10)
  return digits(Math.floor(num / 10), acc)
}

module.exports = digitPow
