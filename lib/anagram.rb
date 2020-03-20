require 'pry'
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    no_match = []
    if no_match ==  array.select {|w| w == @word}
      binding.pry
      no_match
    else
      array.select do |w|
        binding.pry
        alpha_string(w) == alpha_string(@word)
      end
    end
  end

  def alpha_string(word)
     word.split("").sort.join
  end
end

# Sandbox
#
# word = "listen"
# array = %w(enlists google inlets banana)
#
# def alpha_string(word)
#    word.split("").sort.join
# end
#
# array.select {|w| w if alpha_string(w) == alpha_string(word)}
