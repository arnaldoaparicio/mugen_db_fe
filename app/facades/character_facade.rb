class CharacterFacade
  def self.origins
    json = CharacterService.all_origins
    characters = json[:data].map do |character_data|
      Character.new(character_data)
    end
  end

  def self.fighters(character_id)
    json = CharacterService.all_fighters(character_id)
    fighters = json[:data].map do |fighter_data|
      Fighter.new(fighter_data)
    end
  end

  def self.create_character(character)
    character = CharacterService.create_new_character(character)[:data]
    Character.new(character)
  end
end
