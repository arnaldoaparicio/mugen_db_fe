require 'rails_helper'

RSpec.describe 'welcome/index', type: :feature do
  before(:each) do
    visit('/')
  end

  it 'has the welcome greeting' do
    expect(page).to have_content('Welcome to the MUGEN database.')
  end

  it 'has a link to characters page' do
    
  end
end
