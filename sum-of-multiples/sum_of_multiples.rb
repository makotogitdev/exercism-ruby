class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    multiples_to_limit = (0..(limit - 1)).select { |n| qualified?(n) }
    sum = multiples_to_limit.reduce(:+)

    sum
  end

  private

  def qualified?(number)
    !multiples.find { |multiple| number % multiple == 0 }.nil?
  end
end

