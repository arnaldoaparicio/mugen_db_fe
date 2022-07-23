class FightersController < ApplicationController
  def index
    fighters = CharacterFacade.fighters(params[:id])
    characters = CharacterFacade.origins

    @single_game_origin = characters.find{ |origin| origin.id == params[:id] }
    @single_fighter = fighters.find{ |fighter| fighter.id == params[:fighter_id] }
    
    @fighter_variants = FighterFacade.variants(params[:id], params[:fighter_id])
    @character = CharacterFacade.origins
  end
end
