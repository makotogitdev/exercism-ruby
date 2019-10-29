class Series
  attr_reader :slice_string

  def initialize(slice_string)
    @slice_string = slice_string
  end

  def slices(length)
    raise ArgumentError if length > slice_string.length

    result = []

    slice_string.chars.each_with_index do |val, index|
      slice = slice_string[index, length]
      result << slice if slice.length == length
    end

    result
  end
end