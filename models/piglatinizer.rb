class PigLatinizer
  attr_accessor :u_text, :words, :piglatin, :single_word, :ending
  def initialize
    # @u_text = u_text
    @words = []
    @piglatin = ""
    @single_word = []
    @ending = []
    # binding.pry
  end

  def piglatinize(u_text)
    @u_text = u_text
    @words = @u_text.split(" ")
    i=0
    @words.each do |word|
      # @endding = []
      @single_word = word.split("")
      vowels = %w[a e i o u A E I O U]
      if (@single_word.length == 1) || vowels.include?(@single_word.first)
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
