class Hamming
  def self.compute(one, two)
    raise ArgumentError if one.length != two.length


    count = 0

    one.split("").each_with_index do |letter, index|
      count +=1 if (two[index] != letter)
    end

    count
  end
end


module BookKeeping
  VERSION = 3
end
