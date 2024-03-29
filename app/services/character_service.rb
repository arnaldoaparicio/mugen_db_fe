class CharacterService
  def self.all_origins
    response = connection.get('/api/v1/characters')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.all_fighters(character_id)
    response = connection.get("/api/v1/characters/#{character_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.create_new_character(character)
    response = connection.post('/api/v1/characters', character) do |req|
      req.body = { character: character }
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.edit_single_character(character_id, origin)
    response = connection.patch("/api/v1/characters/#{character_id}") do |req|
      req.body = { character: { origin: origin } }
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'https://mugen-db-be.fly.dev')
    # Faraday.new(url: 'http://localhost:3000')
  end
end
