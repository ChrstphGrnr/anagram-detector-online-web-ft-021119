class Anagram
attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(annagrams)
    match_arr = []
    annagrams.each do |words|
      if words.chars.sort.join == @word.chars.sort.join
        match_arr << words
      end
    end
    match_arr
  end
end
