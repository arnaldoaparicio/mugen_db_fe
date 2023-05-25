require 'rails_helper'

RSpec.describe 'characters/index', type: :feature do
  xit 'has some character origins' do
    VCR.use_cassette('contains_some_character_origins') do
    visit('/characters')
  
    expect(page).to have_content('Melty Blood Series')
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

  it 'shows the add new character origin link', :vcr do
    user = User.new({id: '1', attributes: { email: 'mailman@mail.com', admin: true } })
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit('/characters')
    expect(page).to have_content('Add new origin entry')
  end

  it 'does not show the add new character entry link', :vcr do
    visit('/characters')
    expect(page).to_not have_content('Add new origin entry')
  end
end
