class Squares
  attr_reader :upper_limit

  def initialize(upper_limit)
    @upper_limit = upper_limit
  end

  # Returns the sum of square of 1 to given upper limit
  # by using the following Gauss's formula
  # (n(n+1)(2n+1))/6
  def sum_of_squares
    (upper_limit * (upper_limit + 1) * (2 * upper_limit + 1)) / 6
  end

  # Returns the square of the sum of 1 to upper_limit by
  # getting sum of one to upper limit first and then get
  # the squared value
  def square_of_sum
    sum_of_one_to_limit = (upper_limit * (upper_limit + 1)) / 2
    sum_of_one_to_limit ** 2
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end
end

module BookKeeping
  VERSION = 3
end

