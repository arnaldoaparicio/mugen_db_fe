class FighterFacade
  def self.variants(series_id, fighter_id)
    json = FighterService.all_variants(series_id, fighter_id)
    fighter_variants = json[:data].map do |variant_data|
      FighterVariant.new(variant_data)
    end
  end
end
