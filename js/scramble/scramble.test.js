const scramble = require('./scramble')
const expect = require('chai').expect

describe.only('scramble', function () {
  it('returns true for equal strings', function () {
    expect(scramble('test', 'test')).to.be.true
  })

  it('returns false when there are different characters', function () {
    expect(scramble('different', 'characters')).to.be.false
  })

  it('returns true when the superset contains all characters in subset', function () {
    expect(scramble('etsty', 'test')).to.be.true
  })
})
