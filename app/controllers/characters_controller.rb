class CharactersController < ApplicationController
  def connection
    Faraday.new(url: 'http://localhost:5000')
  end

  def index
    response = connection.get('/api/v1/characters')
    json = JSON.parse(response.body, symbolize_names: true)
    @characters = json[:data].map do |character_data|
      Character.new(character_data)
    end
  end

  def show
    response = connection.get("/api/v1/characters/#{params[:id]}")
    json = JSON.parse(response.body, symbolize_names: true)
    @fighters = json[:data].map do |fighter_data|
      Fighter.new(fighter_data)
    end
  end
end
