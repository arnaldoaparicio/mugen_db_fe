require 'rails_helper'

RSpec.describe UserService do
  it 'creates a new user' do
    data = { email: 'jake@mail.com',
                    password: 'blahblah',
                    password_confirmation: 'blahblah',
                    admin: true }

    response = UserService.create_user(data)

    expect(response).to be_a Hash
  end
end
