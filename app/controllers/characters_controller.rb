class CharactersController < ApplicationController
  def index
    @characters = CharacterFacade.origins
  end

  def show
    @fighters = CharacterFacade.fighters(params[:id])
  end
end
