class Day01
  def data
    File.read('./inputs/day_01.txt')
  end

  def elf_sum
    data.split("\n\n").map { |elf| elf.split("\n").map(&:to_i).sum }
  end

  def top_elf
    elf_sum.max
  end

  def top_three_elves
    elf_sum.max(3).sum
  end 
end 

#require 'pry'
#test = Day01.new
#binding.pry
