class UserFacade
  def self.new_user(data)
    user = UserService.create_user(data)[:data]
    User.new(user)
  end
end
