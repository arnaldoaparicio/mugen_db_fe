class CharacterService
  def self.all_origins
    response = connection.get('/api/v1/characters')
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'http://localhost:5000')
  end
end
