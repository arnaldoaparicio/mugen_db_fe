class CharacterService
  def self.all_origins
    response = connection.get('/api/v1/characters')
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.all_fighters(character_id)
    response = connection.get("/api/v1/characters/#{character_id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.create_new_character(character)
    response = connection.post('/api/v1/characters', character) do |req|
      req.body = { character: character }
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'http://localhost:5000')
  end
end
