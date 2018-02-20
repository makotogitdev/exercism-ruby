module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    unless strand1.length == strand2.length
      raise StrandsError.new('Strands must be in equal length!', strand1, strand2)
    end

    strand1.chars.zip(strand2.chars).count { |n1, n2| n1 != n2 }
  end
end

class StrandsError < ArgumentError
  def initialize(message, *values)
    error_message = "#{message}, Values: #{values.join(', ')}"
    super(error_message)
  end
end

