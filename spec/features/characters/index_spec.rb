require 'rails_helper'

RSpec.describe 'characters/index', type: :feature do
  it 'has some character origins' do
    visit('/characters')
    expect(page).to have_content("Arcana Heart")
    expect(page).to have_content('Marvel vs Series/X-COTA')
    expect(page).to have_content('Street Fighter 3')
    expect(page).to have_content('Capcom Fighting Evolution')
    expect(page).to have_content('Darkstalkers/Vampire Savior')
    expect(page).to have_content("JoJo's Bizarre Adventure")
    expect(page).to have_content('The King of Fighters')
    expect(page).to have_content('Street Fighter Alpha')
  end

  it 'shows the characters within the Darkstalkers/Vampire Savior character origin page' do
    visit('/characters')

    click_link 'Darkstalkers/Vampire Savior'

    expect(page).to have_content('Lilith')
    expect(page).to have_content('Jedah')
    expect(page).to have_link('Add a new fighter')
  end
end
