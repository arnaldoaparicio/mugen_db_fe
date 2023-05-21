class FighterVariantsController < ApplicationController
  def new
    characters = CharacterFacade.origins
    fighters = CharacterFacade.fighters(params[:id])
    
    @current_origin = characters.find { |origin| origin.id == params[:id] }
    @current_fighter = fighters.find { |fighter| fighter.id == params[:fighter_id]}
  end

  def create
    FighterVariantFacade.create_fighter_variant(name: params[:name],
    author: params[:author], website: params[:website], game_name: params[:game_name],
    fighter_id: params[:fighter_id], avatar: params[:avatar])
    redirect_to "/characters/#{params[:id]}/#{params[:fighter_id]}"
  end
end
