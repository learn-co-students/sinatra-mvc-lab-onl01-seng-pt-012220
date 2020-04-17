class PigLatinizer

  attr_accessor :user_phrase

  def piglatinize(phrase)
    a = phrase.split(" ")
    b = a.map {|word| to_piglatin(word)}
    b.join(" ")
  end

  def to_piglatin(word)
      first_letter = word[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
      consonants = []
      consonants << word[0]
    if ["a", "e", "i", "o", "u"].include?(word[1]) == false
      consonants << word[1]
    if ["a", "e", "i", "o", "u"].include?(word[2]) == false
      consonants << word[2]
        end
      end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end


end
