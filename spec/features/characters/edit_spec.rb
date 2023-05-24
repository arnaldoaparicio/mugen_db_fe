require 'rails_helper'

RSpec.describe 'characters/edit page', type: :feature do
  it 'shows form to change origin name' do
    origin = Character.new( {id: '1', attributes: { origin: 'Marvel vs. Capcom'} } )
    visit("/characters/#{origin.id}")

    
  end
end
