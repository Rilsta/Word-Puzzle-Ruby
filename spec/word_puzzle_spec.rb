require('rspec')
require('word_puzzle')

describe('String#word_puzzle') do
  it('returns a dash symbol when a letter is entered') do
    expect("a".word_puzzle()).to(eq("-"))
    expect("e".word_puzzle()).to(eq("-"))
    expect("i".word_puzzle()).to(eq("-"))
    expect("o".word_puzzle()).to(eq("-"))
    expect("u".word_puzzle()).to(eq("-"))
  end
  it('returns a word with the vowels subbed out as dash symbols') do
    expect("pizza".word_puzzle()).to(eq("p-zz-"))
  end
end
