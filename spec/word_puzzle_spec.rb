require('rspec')
require('word_puzzle')

describe('String#word_puzzle') do
  it('returns a dash symbol when a letter is entered') do
    expect("a".word_puzzle()).to(eq("-"))
  end
end
