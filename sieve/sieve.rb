class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
    @numbers = (2..limit).each_with_object([]){ |i, a| a << [i, true] }
  end

  def primes
    for i in 2..(Math.sqrt(limit).to_i)
      if @numbers[i][1]

      end
    end
  end

  def j_range(index)
    (1..limit)
  end
end
module BookKeeping
  VERSION = 1
end