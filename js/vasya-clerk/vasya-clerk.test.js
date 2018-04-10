const {expect} = require('chai')
const subject = require('./vasya-clerk')

describe('Vasya clerk', function () {
  context('when change is enough', function () {
    it('returns YES', function () {
      expect(subject([25])).to.equal('YES')
      expect(subject([25, 50])).to.equal('YES')
    })
  })

  context('when change is lacking', function () {
    it('returns NO', function () {
      expect(subject([100])).to.equal('NO')
      expect(subject([25, 100])).to.equal('NO')
      expect(subject([25, 25, 50, 100, 25, 25, 50, 100, 25, 50, 25, 100, 50, 50]))
        .to.equal('NO')
    })
  })
})
