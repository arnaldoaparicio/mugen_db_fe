class FighterService
  def self.all_variants(series_id, fighter_id)
    response = connection.get("/api/v1/characters/#{series_id}/#{fighter_id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'https://boiling-peak-48685.herokuapp.com')
    # Faraday.new(url: 'http://localhost:5000')
  end

  def self.create_new_fighter(fighter)
    response = connection.post("/api/v1/fighters", fighter) do |req|
      req.body = { fighter: fighter }
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
