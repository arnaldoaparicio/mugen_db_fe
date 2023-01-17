class UserService
  def self.create_user(user)
    response = connection.post('/api/v1/users', user) do |req|
      req.body = { user: user }
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_user(user_id)
    response = connection.get("/api/v1/users/#{user_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'http://localhost:3000')
  end
end
