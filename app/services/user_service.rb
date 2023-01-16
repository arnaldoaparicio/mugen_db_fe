class UserService

    def self.create_user
        
    end

  def self.connection
    Faraday.new(url: 'http://localhost:3000')
  end
end
