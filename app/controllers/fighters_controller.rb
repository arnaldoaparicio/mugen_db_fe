class FightersController < ApplicationController
  def connection
    Faraday.new(url: 'http://localhost:5000')
  end

  def index
    response = connection.get("/api/v1/characters/#{params[:id]}/#{params[:fighter_id]}")
    json = JSON.parse(response.body, symbolize_names: true)
    @fighter_variants = json[:data].map do |variant_data|
      FighterVariant.new(variant_data)
    end
  end
end
