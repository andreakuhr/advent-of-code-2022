class Day01
  def data
    File.read('./inputs/day_01.txt')
  end

  def top_elf
    data.split("\n\n").map { |elf| elf.split("\n").map(&:to_i).sum }.max
  end

  def top_three_elves
  end 
end 