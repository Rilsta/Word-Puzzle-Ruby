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
    expect("fenwick".word_puzzle()).to(eq("f-nw-ck"))
    expect("beergarden".word_puzzle()).to(eq("b--rg-rd-n"))
  end
  it('deals with capitalized letters') do
    expect("Oregon".word_puzzle()).to(eq("-r-g-n"))
  end
  it('deals with punctuation and symbols') do
    expect("Yo-yo!".word_puzzle()).to(eq("y--y-!"))
    expect("croissant?".word_puzzle()).to(eq("cr--ss-nt?"))
    expect("!@A#%{b$%^e&*()g}".word_puzzle()).to(eq("!@-#%{b$%^-&*()g}"))
  end
end
