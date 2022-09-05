require 'rails_helper'

RSpec.describe 'welcome/index', type: :feature do
  it 'has the welcome greeting' do
    visit('/')
    expect(page).to have_content('Welcome to the MUGEN database.')
  end

  it 'has a link to characters page' do
    visit('/')
    expect(page).to have_link('Characters')
  end

  it 'clicks on the Characters link' do
    visit('/')
    click_link('Characters')
    expect(current_path).to eq('/characters')
  end
end
