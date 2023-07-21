require 'rails_helper'

RSpec.describe FoodService do
  it 'returns a list of searched food' do
    search = FoodService.new.search_food('sweet potatoes')
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

=begin
As a user,
When I visit "/"
And I fill in the search form with "sweet potatoes"
(Note: Use the existing search form)
And I click "Search"
Then I should be on page "/foods"
Then I should see a total of the number of items returned by the search.
(sweet potatoes should find more than 30,000 results)
Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

And for each of the foods I should see:
- The food's GTIN/UPC code
- The food's description
- The food's Brand Owner
- The food's ingredients
=end