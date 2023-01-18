class SessionService


    

    def self.connection
        Faraday.new('http://localhost:3000')
    end


end