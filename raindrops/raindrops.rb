class Raindrops
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert(number)
    sound = ''

    RULES.each do |factor, word|
      sound << word if number % factor == 0
    end

    sound.empty? ? number.to_s : sound
  end
end

module BookKeeping
  VERSION = 3
end