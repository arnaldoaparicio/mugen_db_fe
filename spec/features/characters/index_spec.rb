require 'rails_helper'

RSpec.describe 'characters/index', type: :feature do
  it 'has some character origins' do
    VCR.use_cassette('contains_some_character_origins') do
    visit('/characters')
    expect(page).to have_content('The Fallen Angel')
    expect(page).to have_content('Capcom vs. SNK Series')
    end
  end

  it 'shows the characters within the Capcom vs. SNK Series character origin page', :vcr do
    visit('/characters')

    click_link 'Capcom vs. SNK Series'

    expect(page).to have_content('Ryu')
    expect(page).to have_content('Kyo')
    expect(page).to have_content('Guile')
  end
end
