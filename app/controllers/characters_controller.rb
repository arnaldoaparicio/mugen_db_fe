class CharactersController < ApplicationController
  def index
    @characters = CharacterFacade.origins
    @paginate_characters = Kaminari.paginate_array(@characters).page(params[:page]).per(12)
  end

  def show
    @fighters = CharacterFacade.fighters(params[:id])
    @paginate_fighters = Kaminari.paginate_array(@fighters).page(params[:page]).per(12)

    all_origins = CharacterFacade.origins
    @origin = all_origins.find {|origin| origin.id == params[:id]}
  end

  def create
    CharacterFacade.create_character(origin: params[:origin])
    redirect_to '/characters'
  end
end
