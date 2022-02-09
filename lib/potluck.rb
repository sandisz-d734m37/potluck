require 'pry'

class Potluck
  attr_reader :date, :dishes

  def initialize(date, dishes = [])
    @date = date
    @dishes = dishes
  end

  def add_dish(new_dish)
    dishes << new_dish
  end
end
