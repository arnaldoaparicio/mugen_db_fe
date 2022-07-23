class FighterVariantsController < ApplicationController
  def new
  end

  def create
    require "pry"; binding.pry
    fighter_variant = FighterVariantFacade.create_fighter_variant(name: params[:name],
    author: params[:author], website: params[:website], game_name: params[game_name],
    fighter_id: params[:fighter_id])
    redirect to "/characters/#{params[:id]}/#{params[:fighter_id]}"
  end
end
