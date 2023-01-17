class UserFacade
  def self.new_user(data)
    user = UserService.create_user(data)[:data]
    User.new(user)
  end

  def self.find_user(user_id)
    user = UserService.get_user(user_id)
    User.new(user)
  end
end
