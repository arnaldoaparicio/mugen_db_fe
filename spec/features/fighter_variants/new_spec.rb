require 'rails_helper'

RSpec.describe 'fighter variants/new', type: :feature do
    it 'shows the fighter variants new page as a logged out user', :vcr do
        origin = Character.new({id: '1', attributes: { origin: 'Melty Blood' } })
        fighter = Fighter.new({id: '1', attributes: { name: 'Roa'} })
        visit("/characters/#{origin.id}/#{fighter.id}/new")

        expect(page).to have_content("You don't have permission to access this page.")
        expect(page).to have_link('Return to Home Page')

        expect(page).to_not have_content('Submit a new entry')
        expect(page).to_not have_field(:name)
        expect(page).to_not have_field(:author)
        expect(page).to_not have_field(:website)
        expect(page).to_not have_field(:game_name)
        expect(page).to_not have_field(:avatar)
        expect(page).to_not have_button('Submit')
    end

    xit 'shows the fighter variants new page as a logged in user', :vcr do
        origin = Character.new({id: '1', attributes: {origin: 'Melty Blood'} })
        fighter = Fighter.new({id: '1', attributes: { name: 'Roa'} })
        user = User.new({id: '1', attributes: {email: 'madeupmail@madeupmail.com', admin: true} })

        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
        
        visit("/characters/#{origin.id}/#{fighter.id}/new")

        expect(page).to have_content('Submit a new entry')

        expect(page).to have_field(:name)
        expect(page).to have_content('Name')

        expect(page).to have_field(:author)
        expect(page).to have_content('Author')

        expect(page).to have_field(:website)
        expect(page).to have_content('Website')

        expect(page).to have_field(:game_name)
        expect(page).to have_content('Origin')

        expect(page).to have_field(:avatar)
        expect(page).to have_content('Attach an image')

        expect(page).to have_button('Submit')

        expect(page).to_not have_content("You don't have permission to access this page.")
    end
end