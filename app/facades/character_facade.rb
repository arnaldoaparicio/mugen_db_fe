class CharacterFacade
  def self.origins
    json = CharacterService.all_origins
    @characters = json[:data].map do |character_data|
      Character.new(character_data)
    end
  end
end
