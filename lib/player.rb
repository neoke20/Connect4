class Player
  attr_reader :character, :name

  def initialize(name, character)
    @character = character
    @name = name
  end
end
