class User
  attr_reader :id, :email, :admin

  def initialize(user_data)
    @id = user_data[:id]
    @email = user_data[:attributes][:email]
    @admin = user_data[:attributes][:admin]
  end
end
