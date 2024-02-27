class CharactersController < ApplicationController
  def index
    characters = CharacterFacade.origins
    @paginate_characters = Kaminari.paginate_array(characters).page(params[:page]).per(12)
  end

  def show
    fighters = CharacterFacade.fighters(params[:id])
    @paginate_fighters = Kaminari.paginate_array(fighters).page(params[:page]).per(12)

    all_origins = CharacterFacade.origins
    @origin = all_origins.find {|origin| origin.id == params[:id]}
  end

  def create
    CharacterFacade.create_character(origin: params[:origin], origin_tag: params[:origin_tag])
    redirect_to '/characters'
  end

  def edit
    characters = CharacterFacade.origins
    @character_origin = characters.find { |character| character.id == params[:id] }
  end

  def update
    CharacterFacade.edit_character(params[:id], params[:origin], params[:origin_tag])
    redirect_to '/characters'
  end
end
