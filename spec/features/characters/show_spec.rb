require 'rails_helper'

RSpec.describe 'characters/show page', type: :feature do
  xit "does not show 'add a new fighter' link  while logged out", :vcr do
    origin = Character.new({id: '10', attributes: {origin: 'Marvel vs. Capcom'}})
    visit("/characters/#{origin.id}")

    expect(page).to have_content('Back to Characters page')
  end
end