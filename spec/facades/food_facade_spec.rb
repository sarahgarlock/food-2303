require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'class methods' do
    describe '.search_food' do
      it 'returns a list of searched food' do
        foods = FoodFacade.new.search_food('sweet potatoes')

        expect(foods).to be_a(Array)
        expect(foods.first).to be_a(Food)
        expect(foods.first.code).to be_a(String)
        expect(foods.first.description).to be_a(String)
        expect(foods.first.brandOwner).to be_a(String)
        expect(foods.first.ingredients).to be_a(String)
      end
    end
  end
end