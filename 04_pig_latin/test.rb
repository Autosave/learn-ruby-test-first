require 'spec_helper'

# HACK
def translate(phrase)
    vowels = ["a", "e", "i", "o", "u"]
    
    word_array = phrase.split(" ")
    word_array.each do |word|
      count = 0
      
      if /[[:upper:]]/.match(word[0])
        was_capital = true
        word.downcase
      end
      
      while vowels.include?(word[0]) == false
        count += 1
        if count > vowels.length
          break
        elsif word["qu"]
          # Two is added to the 'qu_index' due to the index method returning
          # the start position of where the substring is found.
          qu_index = word.index("qu") + 2
          first_letters = word.slice!(0, qu_index)
          word << first_letters + "ay"
          if was_capital
            return word.capitalize
          end
        elsif vowels.include?(word[2]) == false && vowels.include?(word[1]) == false
          first_letters = word.slice!(0,3)
          word << first_letters + "ay"
          if was_capital
            return word.capitalize
          end
        elsif vowels.include?(word[1]) == false
          first_letters = word.slice!(0,2)
          word << first_letters + "ay"
          if was_capital
            return word.capitalize
          end
        else
          first_letters = word.slice!(0, 1)
          word << first_letters + "ay"
          if was_capital
            return word.capitalize
          end
        end
      end
      
      if count == 0
        if was_capital
          word.downcase
          word << "ay"
          return word.capitalize
        else
          word << "ay"
        end
      end
    end
    word_array.join(" ")
end
          
puts translate("Corsair")
