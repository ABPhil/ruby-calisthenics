module FunWithStrings
  def palindrome?
    self.downcase.gsub(/[^a-z]/,'') == self.reverse.downcase.gsub(/[^a-z]/,'')
  end
  def count_words
    words = self.gsub(/[^[:word:]\s]/, '').split(' ')
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase] += 1 }
    return frequency
  end
  def anagram_groups
    arr = []
    h = Hash.new(0)
    self.split(' ').each do |word|
    h.merge!(word.chars.sort word)
    end
  
  h.each_key do |group|
    arr << group
  end
  arr
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
