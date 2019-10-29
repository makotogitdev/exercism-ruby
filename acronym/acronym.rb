class Acronym
  def self.abbreviate(value)
    result = []
    words = value.split(' ')
    words.each do |word|
      #skip of it is not a word
      next unless word =~ /\w/

      if word.include?('-')
        hyphnated_word = word.split('-')
        hyphnated_word.each { |hw| result << hw[0].upcase }
      else
        result << word[0].upcase
      end
    end

    result.join
  end
end