require 'rails_helper'

RSpec.describe 'characters/edit page', type: :feature do
  xit 'shows form to change origin name', :vcr do
    origin = Character.new( {id: '2', attributes: { origin: 'Capcom vs. SNK series'} } )
    visit("/characters")

    user = User.new({id: '1', attributes: { email: 'mailman@mail.com', admin: true } })
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    expect(page).to have_button('Edit origin')
    
    first(:button, 'Edit origin')

    expect(current_path).to eq("/characters/#{origin.id}/edit")
  end
end
