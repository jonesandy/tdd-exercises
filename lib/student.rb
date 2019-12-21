class Student

  def initialize
    @names = []
    @motivation = []
  end

  def save_name(name)
    @names << name
  end

  def track_motivation(score)
    @motivation << score
  end

  def motivation_history
    sum_last_three = @motivation.last(3).sum
    "Average of last three scores is: #{sum_last_three / 3}"
  end

end
