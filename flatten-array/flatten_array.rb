class FlattenArray
  VERSION = 1

  def self.flatten(value)
    value.flatten.select { |element| !element.nil? }
  end
end