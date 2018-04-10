const expect = require('chai').expect
const subject = require('./playing-with-digits')

describe('Playing with digits', function () {
  context('when single digits', function () {
    it('returns divisor', function () {
      expect(subject(8, 2)).to.equal(8)
    })
  })

  context("when number is a factor of the digit's power", function () {
    it('returns divisor', function () {
      expect(subject(89, 1)).to.equal(1)
      expect(subject(695, 2)).to.equal(2)
    })
  })

  context("when number is not a factor of digit's power", function () {
    it('returns -1', function () {
      expect(subject(92, 1)).to.equal(-1)
    })
  })
})
