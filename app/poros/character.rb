class Character
  attr_reader :id, :name

  def initialize(character_data)
    @id = character_data[:id]
    @name = character_data[:attributes][:origin]
  end
end
