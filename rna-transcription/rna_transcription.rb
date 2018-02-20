module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(strand)
    rna_transcription = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    
    strand.chars.map do |n|
      return '' unless rna_transcription.has_key?(n)
      rna_transcription[n]
    end.join
  end
end