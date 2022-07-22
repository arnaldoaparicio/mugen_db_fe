class FightersController < ApplicationController
  def connection
    Faraday.new(url: 'http://localhost:5000')
  end

  def index
    @fighter_variants = FighterFacade.variants(params[:id], params[:fighter_id])
  
  end
end
