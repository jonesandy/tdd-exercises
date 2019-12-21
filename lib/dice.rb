class Dice

  def roll
    rand(6) + 1
  end

  def throw(number)
    2.times { roll }
  end

end
 