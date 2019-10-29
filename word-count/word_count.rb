class Phrase
  attr_reader :words

  def initialize(words)
    @words = words.scan(/\w+'?\w+|\w+/).map(&:downcase)
  end

  def word_count
    words.group_by(&:itself).transform_values(&:count)
  end
end