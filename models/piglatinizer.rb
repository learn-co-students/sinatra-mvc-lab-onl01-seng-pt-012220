class PigLatinizer
    attr_reader :phrase

    def initialize()
    end

    def piglatinize(phrase)
        phrase.split(" ").map{|word| 
        #ignore if word has number?

        if word.start_with?(/[aeiouAEIOU]/) 
            word += "way"
        else
            word_as_array = word.split("")

            while !word_as_array.first.start_with?(/[aeiouAEIOU]/) 
                letter_removed = word_as_array.shift
                word_as_array.push(letter_removed)
            end

            word_as_array.push("ay").join
        end
        }.join(" ")
    end
end