class Dice

  def roll
    rand(1..6)
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
 