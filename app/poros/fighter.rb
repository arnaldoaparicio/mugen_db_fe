class Fighter
  attr_reader :id, :name

  def initialize(fighter_data)
    @id = fighter_data[:attributes][:slug_url]
    @name = fighter_data[:attributes][:name]
  end
end
