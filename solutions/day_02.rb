class Day02
  def data
    File.read('./inputs/day_02.txt').split("\n")
  end

  # Rock = A = X = 1
  # Paper = B = Y = 2
  # Scissors = C = Z = 3

  # paper (BY) > rock (AX)
  # scissors (CZ) > paper (BY)
  # rock (AX) > scissors (CZ)

  # scores: win is 6, draw is 3, loss is 0
  # first -- find outcomes

  def win
    return 6 if data.map { |combo| combo == "A Y" || " B Z" || "C X" }
  end

  def draw
    return 3 if data.map { |combo| combo == "B Y" || "C Z" || "A X" }
  end

  def lose
    return 0 if data.map { |combo| combo == "A Z" || "B X" || "C Y" }
  end

  def rock_paper_scissors
   total_score = total_score + 1 if data.map { |value| value[2] == "X" }
  end
end 