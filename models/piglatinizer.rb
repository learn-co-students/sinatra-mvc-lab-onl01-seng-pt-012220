class PigLatinizer
    attr_reader :phrase

    def initialize
        @phrase = phrase
    end

    def to_pig_latin(phrase)
        plain_words = phrase.scan(/\w+/)
        plain_words.map do |w|
            if !w[/[aeiouAEIOU]/]
                w = w + "ay"
            elsif w.start_with?(/[aeouiAEOUI]/)
                w = w + "way"
            else
               i = w.index(/[aeiouAEOUI]/) -1
               r = w.slice!(w[0..i])
               
               w = w + r + "ay"
            end
        end
    end

    def piglatinize(phrase)
        to_pig_latin(phrase).join(' ')
    end
end