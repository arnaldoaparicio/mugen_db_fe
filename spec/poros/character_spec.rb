require 'rails_helper'

RSpec.describe Character do
  it 'exists and has attributes' do
    data = {
      attributes: {
        origin: 'Street Fighter 2'
      }
    }

    character = Character.new(data)

    expect(character).to be_a Character
    expect(character.name).to eq('Street Fighter 2')
  end
end
