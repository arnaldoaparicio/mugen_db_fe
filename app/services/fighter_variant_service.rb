class FighterVariantService

  def self.connection
    Faraday.new(url: 'http://localhost:5000')
  end

  def self.create_new_fighter_variant(fighter_variant)
    response = connection.post('/api/v1/fighter_variants', fighter_variant) do |req|
      req.body = { fighter_variant: fighter_variant}
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
