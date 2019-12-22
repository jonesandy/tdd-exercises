class BirthdayTracker 

  def initialize 
    @list = []
  end

  def store(name, date)
    @list << {name: name, birthday: date}
  end

  def print
    @list.each do |person|
      puts "#{person[:name]} #{person[:birthday]}"
    end
  end

end