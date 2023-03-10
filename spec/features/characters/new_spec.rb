require 'rails_helper'

RSpec.describe 'characters/new', type: :feature do
    it 'shows the characters new page while logged out' do
        visit('/characters/new')
        expect(page).to have_content("You don't have permission to access this page.")
        expect(page).to have_link('Return to Home Page')

        expect(page).to_not have_content('Submit a new entry for origin')
        expect(page).to_not have_content('Name of game origin')
        expect(page).to_not have_field(:origin)
    end
    
    it 'shows the characters new page while logged in' do
        user = User.new({id: '1', attributes: { email: 'mail@mail.com', admin: true} })
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        visit('/characters/new')

        expect(page).to have_content('Submit a new entry for origin')
        expect(page).to have_field(:origin)
        expect(page).to have_content('Name of game origin')
        expect(page).to have_button('Submit')
    end
end