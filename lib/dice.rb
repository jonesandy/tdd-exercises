class Dice

  def roll
    rand(6) + 1
  end

  def throw(number)
    number.times { roll }
    print "You rolled: 2 & 2"
  end

end
 