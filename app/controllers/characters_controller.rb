class CharactersController < ApplicationController
  def connection
    Faraday.new(url: 'http://localhost:5000')
  end

  def index
    @characters = CharacterFacade.origins
  end

  def show
    response = connection.get("/api/v1/characters/#{params[:id]}")
    json = JSON.parse(response.body, symbolize_names: true)
    @fighters = json[:data].map do |fighter_data|
      Fighter.new(fighter_data)
    end
  end
end
