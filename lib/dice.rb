class Dice

  def roll
    rand(6) + 1
  end

  def throw(number)
    output = "You rolled: "
    throws = []

    number.times do
      throws << roll
    end

    print output
    print throws.join(" & ")
  end

end
 