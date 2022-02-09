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


  def get_all_from_category(category)
    all_from_category = []

    dishes.each do |dish|
      if dish.category == category
        all_from_category << dish
      end
    end
    all_from_category
  end
end
