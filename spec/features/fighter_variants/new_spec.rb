require 'rails_helper'

RSpec.describe 'fighter variants/new', type: :feature do
    it 'shows the fighter variants new page as a logged out user' do
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
end