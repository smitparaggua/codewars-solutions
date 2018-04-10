const PAYMENT = 25

function tickets(line, cash = 0) {
  let change = line[0] - PAYMENT
  if (line.length === 0) { return 'YES' }
  if (change > cash) { return 'NO' }
  return tickets(line.slice(1), cash + PAYMENT)
}

module.exports = tickets
