class PigLatinizer
  attr_accessor :words, :piglatin, :single_word, :ending
  def initialize
    @words = []
    @piglatin = ""
    @single_word = []
    @ending = []
  end

  def piglatinize(u_text)
    @words = u_text.split(" ")
    i=0
    @words.each do |word|
      @single_word = word.split("")
      vowels = %w[a e i o u A E I O U]
      if vowels.include?(@single_word.first)
        @single_word.push("w","a","y")
      else
        until vowels.include?(@single_word.first)
          @ending << @single_word.shift
        end
        @ending.push("a","y")
        @single_word.push(@ending.flatten)
      end
      @ending.clear
      @words[i] = @single_word.join
      i+=1
    end
    @words.join(" ")
  end

end
