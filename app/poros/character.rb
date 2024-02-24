class Character
  attr_reader :id, :name, :name_tag

  def initialize(character_data)
    @id = character_data[:id]
    @name = character_data[:attributes][:origin]
    @name_tag = character_data[:attributes][:origin_tag]
  end
end
