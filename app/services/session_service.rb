class SessionService
  def self.found_user(user_data)
    response = connection.post('/api/v1/login', user_data) do |req|
      req.body = { user: user_data }
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new('http://localhost:3000')
  end
end
