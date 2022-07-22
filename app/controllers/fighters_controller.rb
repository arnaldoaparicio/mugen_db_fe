class FightersController < ApplicationController
  def index
    @fighter_variants = FighterFacade.variants(params[:id], params[:fighter_id])
  end
end
