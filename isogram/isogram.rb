class Isogram
  def self.isogram?(input)
    processed_input = input.downcase.scan(/[a-zA-Z]/)
    processed_input.uniq.length == processed_input.length
  end
end