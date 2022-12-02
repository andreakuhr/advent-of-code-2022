class Day01
  def elf_snacks
    data = File.readlines('./inputs/day_01.txt')
    data.split("\n\n").map { |elf| elf.split("\n").map(&:to_i).sum }.max
  end
end 