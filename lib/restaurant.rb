class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize (opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    opening_time = @opening_time.to_i + hours
    p "#{opening_time}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i < 12
      true
    else
      false
    end
  end

# Why is below not working? Try map?
  def menu_dish_names
    dishes.each do |dish|
      dish.upcase
    end
    p @dishes
  end

  def announce_closing_time(hours)
    opening_time = @opening_time.to_i + hours
    if opening_time.to_i < 12
      p "#{name} will be closing at #{opening_time}:00AM"
    else
      p "#{name} will be closing at #{opening_time.to_i - 12}:00PM"
    end
  end
end
