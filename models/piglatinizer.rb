class PigLatinizer
    attr_reader :text

    def initialize
    
    end

    def piglatinize(text)
        a = text.split(" ")
        b = a.map {|word| piglatinize_word(word)}
        b.join(" ")
    end
    
    def piglatinize_word(word)
        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

        if vowels.include?(word[0])
            word += 'way'
        elsif vowels.none?(word[0]) && vowels.none?(word[1]) && vowels.none?(word[2])
            word = word[3..-1] + word[0..2] + 'ay'
        elsif vowels.none?(word[0]) && vowels.none?(word[1]) 
            word = word[2..-1] + word[0..1] + 'ay'
        elsif  vowels.none?(word[0])
            word = word[1..-1] + word[0] + 'ay'
        else
            word
        end
        word
    end        

end