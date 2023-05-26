class FighterFacade
  def self.variants(series_id, fighter_id)
    json = FighterService.all_variants(series_id, fighter_id)
    fighter_variants = json[:data].map do |variant_data|
      FighterVariant.new(variant_data)
    end
  end

  def self.create_fighter(data)
    fighter = FighterService.create_new_fighter(data)[:data]
    Fighter.new(fighter)
  end

  def self.edit_fighter(character_id, fighter_id, new_name)
    json = FighterService.edit_single_fighter(character_id, fighter_id, new_name)[:data]
    Fighter.new(json)
  end
end
