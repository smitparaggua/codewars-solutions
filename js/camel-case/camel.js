const camel = string => {
  let parts = string.split(/-|_/)
  return parts[0] + parts.slice(1).map(capitalize).join('')
}

const capitalize = string => {
  return string[0].toUpperCase() + string.substr(1)
}

module.exports = camel
