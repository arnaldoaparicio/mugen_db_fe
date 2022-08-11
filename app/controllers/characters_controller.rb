class CharactersController < ApplicationController
  def index
    @characters = CharacterFacade.origins
  end

  def show
    @fighters = CharacterFacade.fighters(params[:id])
  end

  def create
    character = CharacterFacade.create_character(origin: params[:origin])
    redirect_to '/characters'
  end
end
