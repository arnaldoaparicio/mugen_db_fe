require 'rails_helper'

RSpec.describe Fighter do
  it 'exists and has attributes' do
    character_data = { id: 1, attributes: { origin: 'Street Fighter 2' } }
    character = Character.new(character_data)

    data = { id: 1, attributes: { name: 'Ryu', character_id: character.id } }
    fighter = Fighter.new(data)

    expect(fighter).to be_a(Fighter)
    expect(fighter.name).to eq('Ryu')
  end
end
