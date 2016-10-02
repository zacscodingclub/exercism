class Complement
  COMPLEMENT_PAIRS = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  def self.of_dna(sequence)
    split_sequence = sequence.split("")

     validate_sequence(split_sequence) ? "" : return_sequence(split_sequence)
  end

  def self.return_sequence(sequence)
    sequence.map { |l| COMPLEMENT_PAIRS[l] }.join("")
  end

  def self.validate_sequence(sequence)
    sequence.any? { |l| !COMPLEMENT_PAIRS.keys.include?(l) }
  end
end

module BookKeeping
  VERSION = 4
end
