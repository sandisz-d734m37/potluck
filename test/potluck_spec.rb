require './lib/dish'
require './lib/potluck'

describe Potluck do
  potluck = Potluck.new("7-13-18")
  couscous_salad = Dish.new("Couscous Salad", :appetizer)
  cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  it 'can be created' do
    expect(potluck).to be_a(Potluck)
    expect(couscous_salad && cocktail_meatballs).to be_a(Dish)
  end

  it 'can add dishes' do
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes[0].name).to eq("Couscous Salad")
    expect(potluck.dishes[1].name).to eq("Cocktail Meatballs")
    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)
  end
end

describe 'Get all' do
  potluck = Potluck.new("7-13-18")
  couscous_salad = Dish.new("Couscous Salad", :appetizer)
  summer_pizza = Dish.new("Summer Pizza", :appetizer)
  roast_pork = Dish.new("Roast Pork", :entre)
  cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  candy_salad = Dish.new("Candy Salad", :dessert)

  it 'can add dishes' do
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    expect(potluck.dishes.length).to eq(5)
  end

  it 'can get all dishes from a specified category' do
    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
    expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
    expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
  end
end
