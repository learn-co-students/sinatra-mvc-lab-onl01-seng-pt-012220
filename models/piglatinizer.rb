require 'pry'

class PigLatinizer 
  
  Alpha = ('a'..'z').to_a
  Vowels = %w[a e i o u]
  
  
  def piglatinize(phrase)
    @sentence = phrase.split(' ')
 
      if Vowels.include?(phrase[0].downcase) && @sentence.size == 1
        phrase + 'way'
         
      elsif Vowels.include?(phrase[1].downcase) && @sentence.size == 1
        phrase[1..-1] + phrase[0] + 'ay'
         
      elsif Vowels.include?(phrase[2].downcase) && @sentence.size == 1
        phrase[2..-1] + phrase[0..1] + 'ay'  
         
      elsif Vowels.include?(phrase[3].downcase) && @sentence.size == 1
        phrase[3..-1] + phrase[0..2] + 'ay'
      else @sentence.size > 1 
          @new_sentence = []
          @sentence.map do |s|
         
            if Vowels.include?(s[0].downcase)
            @new_sentence << s + 'way'
            elsif Vowels.include?(s[1].downcase)
            @new_sentence << s[1..-1] + s[0] + 'ay'
            elsif Vowels.include?(s[2].downcase)
            @new_sentence << s[2..-1] + s[0..1] + 'ay'
            else Vowels.include?(s[3].downcase)
            @new_sentence << s[3..-1] + s[0..2] + 'ay'
            
            end 
        end 
        @new_sentence.join(" ")
      end
  end 
  
end