class CharactersController < ApplicationController
  def connection
    Faraday.new(url: 'http://localhost:5000')
  end

  def index
    @characters = CharacterFacade.origins
  end

  def show
    @fighters = CharacterFacade.fighters(params[:id])
  end
end
