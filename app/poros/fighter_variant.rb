class FighterVariant
  attr_reader :id, :name, :author, :website, :game_name, :avatar, :image_url

  def initialize(variant_data)
    @id = variant_data[:id]
    @name = variant_data[:attributes][:name]
    @author = variant_data[:attributes][:author]
    @website = variant_data[:attributes][:website]
    @game_name = variant_data[:attributes][:game_name]
    @avatar = variant_data[:attributes][:avatar]
    @image_url = variant_data[:attributes][:image_url]
  end
end
