function oddInt(array) {
  return array.find(element => count(element, array) %2)
}

function count(element, array) {
  return array.reduce((acc, cur) => cur === element ? acc + 1 : acc, 0)
}

module.exports = oddInt
