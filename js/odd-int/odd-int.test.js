const expect = require('chai').expect
const subject = require('./odd-int')

describe('Odd int', function () {
  context('when single element', function () {
    it('returns the element', function () {
      expect(subject([10])).to.equal(10)
    })
  })

  context('when multiple elements', function() {
    it('returns element with odd number of occurrences', function () {
      expect(subject([3, 3, 1])).to.equal(1)
    })
  })
})
