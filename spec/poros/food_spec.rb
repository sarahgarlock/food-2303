require 'rails_helper'

RSpec.describe Food do
  it 'exists and has attributes' do
    data = {
      :gtinUpc=>"070560951975",
      :description=>"The Sweetest of Potatoes",
      :brandOwner=>"The Pictsweet Company",
      :ingredients=>"SWEET POTATOES",
      :totalHits=>45635
    }

    food = Food.new(data)

    expect(food).to be_a(Food)
    expect(food.code).to eq("070560951975")
    expect(food.description).to eq("The Sweetest of Potatoes")
    expect(food.brandOwner).to eq("The Pictsweet Company")
    expect(food.ingredients).to eq("SWEET POTATOES")
    expect(food.totalHits).to eq(45635)
  end
end