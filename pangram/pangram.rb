class Pangram
  def self.is_pangram?(sentence)
    alphabets = ('a'..'z').to_a
    unique_chars = sentence.downcase.chars.uniq

    unique_chars.each do |char|
      alphabets.delete(char)
    end

    alphabets.empty?
  end
end

module BookKeeping
  VERSION = 2
end