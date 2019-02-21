class Anagram
attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(annagrams)
    match_arr = []
    annagrams.split.each do |words|
      if words.chars.sort_by(&:downcase).join == @word.chars.sort_by(&:downcase)
        match_arr << words
      end
    end
    match_arr
  end
end
