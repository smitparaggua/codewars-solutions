const camel = require('./camel')
const expect = require('chai').expect

describe('camel', function () {
  context('when string is empty', function () {
    it('returns empty string', function () {
      expect(camel('')).to.eq('')
    })
  })

  it('returns the same string when one word', function () {
    expect(camel('one')).to.eq('one')
  })

  context('when separated with underscore', function () {
    it('returns capitalized second word when two words', function () {
      expect(camel('two_words')).to.eq('twoWords')
    })

    it('returns capitalized 2nd and 3rd words when 3 words', function () {
      expect(camel('one_two_three')).to.eq('oneTwoThree')
    })
  })

  it('supports dash separator', function () {
    expect(camel('one-two-three')).to.eq('oneTwoThree')
  })
})
