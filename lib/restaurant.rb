class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name, dishes)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def add_dishes(type_of_dish)
    @dishes << type_of_dish
  end

  def closing_time(close)
    @close = close
  end

end

# restaurant = Restaurant.new('10:00', 'Fuel Cafe', 'plates')
# restaurant.add_dishes('plates')
