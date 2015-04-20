require 'spec_helper'

def echo(command)
  command
end

def shout(command)
  command.upcase
end

def repeat(command, number = 2)
  full_command = ""
  while number >= 1
    if number > 1
      full_command << (command + " ") 
    else
      full_command << command
    end
    number -= 1
  end
  return full_command
end

def start_of_word(word, stop)
  word.slice(0, stop)
end

def first_word(phrase)
  separate = phrase.split(' ', 2)
  separate.shift
end

def titleize(title)
  little_words = [
                  "a", "an", "the", 
                  "and", "but", "or", "for", "nor", 
                  "over", "on", "to", "from", "by"
                 ]
  title_array = title.split(" ")
  title_array.each do |word|
    if little_words.include?(word) == false
      word.capitalize!
    elsif title_array.index(word) == 0
      word.capitalize!
    end
  end
  title_array.join(" ")
end
