class String
  define_method(:word_puzzle) do
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    old_sentence = self.to_s().split("")
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

  define_method(:unchanged_sentence)do
    original_sentence = self
    return original_sentence
  end
end
