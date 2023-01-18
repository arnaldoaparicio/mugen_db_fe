class SessionService
  def self.found_user(user_data)
    response = connection.post('/api/v1/login', user_data)
  end

  def self.connection
    Faraday.new('http://localhost:3000')
  end
end
