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
    3
  end

end
