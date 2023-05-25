require 'rails_helper'

RSpec.describe 'characters/edit page', type: :feature do
  it 'shows form to change origin name', :vcr do
    origin = Character.new( {id: '1', attributes: { origin: 'Marvel vs. Capcom'} } )
    visit("/characters/#{origin.id}")

    expect(page).to have_button('Edit origin')
    
  end
end
