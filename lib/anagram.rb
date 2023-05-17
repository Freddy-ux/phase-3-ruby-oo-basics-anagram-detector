class Anagram
    def initialize(word)
      @word = word.downcase
    end
  
    def match(words)
      words.select { |w| anagram?(w) }
    end
  
    private
  
    def anagram?(word)
      word.downcase != @word && word.downcase.chars.sort == @word.chars.sort
    end
  end
  