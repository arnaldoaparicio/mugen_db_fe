require 'rails_helper'

RSpec.describe UserService do
  xit 'creates a new user', :vcr do
    data = { email: 'jake@mail.com',
                    password: 'blahblah',
                    password_confirmation: 'blahblah',
                    admin: true }

    response = UserService.create_user(data)
      # require 'pry'; binding.pry
    expect(response).to be_a Hash
    expect(response).to have_key :data

    expect(response[:data]).to have_key :id
    expect(response[:data][:id]).to be_a String

    expect(response[:data][:attributes]).to have_key :email
    expect(response[:data][:attributes][:email]).to be_a String

    expect(response[:data][:attributes]).to have_key :admin
    # expect(response[:data][:attributes][:admin]).to be_a Boolean
    
  end
end
