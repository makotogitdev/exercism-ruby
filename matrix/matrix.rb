class Matrix
  attr_reader :rows

  def initialize(str)
    @rows = []
    str.each_line do |s|
      row_in_str = s.split(' ')
      @rows << row_in_str.map!(&:to_i)
    end
  end

  def columns
    # result = []
    # @rows.each_with_index do |r, i|
    #   column = []
    #   @rows.each do |row|
    #     column << row[i]
    #   end
    #   result << column unless column.compact == []
    # end
    # result
    @rows.transpose
  end
end