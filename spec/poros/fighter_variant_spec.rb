require 'rails_helper'

RSpec.describe FighterVariant do
  it 'exists and has attributes' do
    character_data = { id: 1, attributes: { origin: 'Street Fighter 2' } }
    character = Character.new(character_data)

    data = { id: 1, attributes: { name: 'Ryu', character_id: character.id } }
    fighter = Fighter.new(data)

    fighter_variant_data = {
      id: 1,
      attributes: {
        name: 'Ryu',
        author: 'Warusaki3',
        game_name: 'Capcom vs. SNK 2',
        image_url: 'https://imgur.com/',
        fighter_id: fighter.id
      }
    }

    fighter_variant = FighterVariant.new(fighter_variant_data)

    expect(fighter_variant).to be_a(FighterVariant)
    expect(fighter_variant.name).to eq('Ryu')
    expect(fighter_variant.author).to eq('Warusaki3')
    expect(fighter_variant.game_name).to eq('Capcom vs. SNK 2')
    expect(fighter_variant.image_url).to eq('https://imgur.com/')
  end
end
