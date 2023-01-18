class SessionFacade

    def self.user_login(data)
        user = SessionService.found_user(data)
        User.new(user)
    end

end