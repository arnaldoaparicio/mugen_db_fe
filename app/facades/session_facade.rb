class SessionFacade

    def self.user_login(email, password)
        user = SessionService.found_user(email, password)
        User.new(user)
    end

end