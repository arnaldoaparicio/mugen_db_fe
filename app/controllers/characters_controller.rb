class CharactersController < ApplicationController
  def index
    @characters = CharacterFacade.origins
  end

  def show
    @fighters = CharacterFacade.fighters(params[:id])

    all_origins = CharacterFacade.origins
    @origin = all_origins.find {|origin| origin.id == params[:id]}
  end

  def create
    CharacterFacade.create_character(origin: params[:origin])
    redirect_to '/characters'
  end
end
