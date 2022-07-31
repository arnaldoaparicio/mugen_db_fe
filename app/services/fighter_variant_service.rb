class FighterVariantService
  def self.connection
    Faraday.new(url: 'http://localhost:5000') do |conn|
  # POST/PUT params encoders:
  conn.request :multipart
  conn.request :url_encoded

  # Last middleware must be the adapter:
  conn.adapter :net_http
  # fighter_variant[:avatar] = Faraday::UploadIO.new(fighter_variant[:avatar].tempfile.path, 'image/png')
end
  end

  def self.create_new_fighter_variant(fighter_variant)
    fighter_variant[:avatar] = Faraday::Multipart::FilePart.new(fighter_variant[:avatar].tempfile.path, 'image/png')
    response = connection.post('/api/v1/fighter_variants', fighter_variant ) do |req|
      req.body = { fighter_variant: fighter_variant }
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
