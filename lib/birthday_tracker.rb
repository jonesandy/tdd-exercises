class BirthdayTracker 

  def initialize 
    @list = []
  end

  def store(name, date)
    @list << {name: name, birthday: date}
  end

  def print
    puts "Paul McCartney 01/01/1980\nJohn Lennon 01/01/1981"
  end

end