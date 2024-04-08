class Fighter
  attr_reader :id, :name, :name_tag

  def initialize(fighter_data)
    @id = fighter_data[:attributes][:slug_url]
    @name = fighter_data[:attributes][:name]
    @name_tag = fighter_data[:attributes][:name_tag]
  end
end
