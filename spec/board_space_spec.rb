require 'spec_helper'

describe BoardSpace do
  it "is occupied if a player has its piece in the space" do
    space = BoardSpace.new
    space.player = Player.new('o')
    # expect(space.occupied?).to be(true)
    expect(space).to be_occupied
  end
  it "is not occupied if there is no piece in the space" do
    space = BoardSpace.new
    # expect(space.occupied?).to be(false)
    expect(space).to_not be_occupied
  end
  it "has been assigned a player" do
    player = Player.new('o')
    space = BoardSpace.new
    space.player = player
    expect(space.player).to eq(player)
  end

  it "defines the player occupying the space" do
    player = Player.new('o')
    space = BoardSpace.new
    space.player = player
    expect(space.to_char).to eq('o')
  end
  it "defines an empty space when no player is occupying the space" do
    space = BoardSpace.new
    expect(space.to_char).to eq("_")
  end
end
