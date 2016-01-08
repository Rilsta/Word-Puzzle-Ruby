class String
  define_method(:word_puzzle) do
    vowels = ["a", "e", "i", "o", "u"]
    old_sentence = self.split()
    new_sentence = []
    old_sentence.each()do |letter|
      if vowels.include?(letter)
        new_sentence.push("-")
      else
        new_sentence.push(letter)
      end
    end
    new_sentence.join()
  end
end
