class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(color_names)
    decoded_values = []
    color_names.each_with_index do |name, index|
      break if index > 1
      decoded_values << COLORS.index(name.downcase)
    end
    decoded_values.join.to_i
  end
end