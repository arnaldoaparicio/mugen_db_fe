require 'rails_helper'

RSpec.describe 'characters/index', type: :feature do
  xit 'has some character origins' do
    VCR.use_cassette('contains_some_character_origins') do
      visit('/characters')
      save_and_open_page
    expect(page).to have_content('The Fallen Angel')
    expect(page).to have_content('Capcom vs. SNK Series')
    end
  end

  xit 'shows the characters within the Darkstalkers/Vampire Savior character origin page', :vcr do
    visit('/characters')

    click_link 'Capcom vs. SNK Series'

    expect(page).to have_content('Ryu')
    expect(page).to have_content('Kyo')
    expect(page).to have_content('Guile')
    expect(page).to have_link('Add a new fighter')
  end
end
