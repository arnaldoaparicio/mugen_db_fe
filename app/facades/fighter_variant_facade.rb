class FighterVariantFacade
  def self.create_fighter_variant(data)
    # require "pry"; binding.pry
    fighter_variant = FighterVariantService.create_new_fighter_variant(data)[:data]
    FighterVariant.new(fighter_variant)
  end
end
