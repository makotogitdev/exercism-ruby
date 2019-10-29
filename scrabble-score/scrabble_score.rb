class Scrabble
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def score
    return 0 unless word != nil && word.scan(/[a-zA-Z]/).length > 0

    total_score = 0

    word.scan(/[a-zA-Z]/).each do |w|
      total_score = total_score + letter_score(w)
    end

    total_score
  end

  def self.score(word)
    new(word).score
  end

  private

  def letter_score(letter)
    upcased_letter = letter.upcase
    # puts "upcased: #{upcased_letter}"
    case upcased_letter
    when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'
      1
    when 'D', 'G'
      2
    when 'B', 'C', 'M', 'P'
      3
    when 'F', 'H', 'V', 'W', 'Y'
      4
    when 'K'
      5
    when 'J', 'X'
      8
    when 'Q', 'Z'
      10
    else
      0
    end
  end
end