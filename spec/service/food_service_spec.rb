require 'rails_helper'

RSpec.describe FoodService do
  it 'returns a list of searched food' do
    search = FoodService.new.search_food('sweet potatoes')
    
    expect(search[:totalHits]).to eq(55579)
    
    foods = search[:foods].first

    expect(foods).to be_a(Hash)
    expect(foods.count).to eq(24)
    
    expect(foods).to have_key(:gtinUpc)
    expect(foods[:gtinUpc]).to be_a(String)

    expect(foods).to have_key(:description)
    expect(foods[:description]).to be_a(String)

    expect(foods).to have_key(:brandOwner)
    expect(foods[:brandOwner]).to be_a(String)

    expect(foods).to have_key(:ingredients)
    expect(foods[:ingredients]).to be_a(String)
  end
end