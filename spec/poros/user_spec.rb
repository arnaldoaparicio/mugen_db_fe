require 'rails_helper'

RSpec.describe User do
  it 'exists and has attributes' do
    data = { attributes: { email: 'tanner@mail.com', admin: true } }

    user = User.new(data)

    expect(user).to be_a User
    expect(user.email).to eq('tanner@mail.com')
    expect(user.admin).to eq(true)
  end
end
