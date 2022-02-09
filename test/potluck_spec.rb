require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
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
