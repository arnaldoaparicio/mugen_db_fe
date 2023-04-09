class FightersController < ApplicationController
  def index
    fighters = CharacterFacade.fighters(params[:id])
    characters = CharacterFacade.origins

    @single_game_origin = characters.find { |origin| origin.id == params[:id] }
    @single_fighter = fighters.find { |fighter| fighter.id == params[:fighter_id] }

    fighter_variants = FighterFacade.variants(params[:id], params[:fighter_id])
    @corrected = Kaminari.paginate_array(fighter_variants).page(params[:page]).per(4)
    @character = CharacterFacade.origins
  end

  def create
    FighterFacade.create_fighter(name: params[:name], character_id: params[:character_id])
    redirect_to "/characters/#{params[:character_id]}"
  end

  def new 
  end
end
