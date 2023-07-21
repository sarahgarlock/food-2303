require 'rails_helper'

RSpec.describe '/foods' do
  it 'lists information about searched food' do
    visit root_path

    expect(page).to have_content('Ingredient Search')
    expect(page).to have_field(:q)
    expect(page).to have_button('Search')

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
    
    expect(current_path).to eq(foods_path)

    expect(page).to have_content('Total items found: 55579')
    expect(page).to have_content('gtinUpc Code: 8901020020844')
    expect(page).to have_content('Description: SWEET POTATOES')
    expect(page).to have_content('Brand Owner: NOT A BRANDED ITEM')
    expect(page).to have_content('Ingredients: ORGANIC SWEET POTATOES.')
  end
end