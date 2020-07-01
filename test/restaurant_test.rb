require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
  # Iteration 1 Tests:
  def test_it_exists
    restaurant = Restaurant.new('10:00', 'Fuel Cafe', 'spaghetti and meatballs')

    assert_instance_of Restaurant, restaurant
  end

  def test_it_has_opening_time
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe', 'eggplant parmesan')

    assert_equal '10:00', restaurant.opening_time
  end

  def test_it_has_name
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe', 'lasagna')

    assert_equal 'Fuel Cafe', restaurant.name
  end

  def test_it_has_dishes
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe', ['bow tie pasta', 'caesar salad'])

    assert_equal [], restaurant.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    skip
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe', 'glasses')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio', 'spoons')

    assert_equal '10:00', restaurant1.closing_time(8) #so here, opening time is a string, but cl
    assert_equal '16:00', restaurant2.closing_time(7)

    # assert_equal restaurant1.closing_time, 8 #so opening time is a string, but closing time is an integer?
    # assert_equal restaurant2.closing_time, 7
  end

  def test_it_can_add_dishes
    # skip
    restaurant = Restaurant.new('16:00', 'Il Poggio', 'roasted chicken')

    restaurant.add_dishes('Burrata')
    restaurant.add_dishes('Pizzetta')
    restaurant.add_dishes('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.dishes
  end
end
