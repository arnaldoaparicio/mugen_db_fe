require 'rails_helper'

RSpec.describe 'characters/show page', type: :feature do
  it "shows empty section" do
    origin = Character.new(id: '1', attributes: {origin: 'Marvel vs. Capcom'})
    visit("/characters/#{origin.id}")

    expect(page).to have_content('This section is currently empty. Please check back soon')
  end
end