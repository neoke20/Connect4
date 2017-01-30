require 'spec_helper'
require_relative '../lib/player'

describe Player do
  it "attributes a character 'o' to a new player" do
    player = Player.new('o')
    expect(player.character).to eq('o')
  end

  it "attributes a character 'x' to a new player" do
    player = Player.new('x')
    expect(player.character).to eq('x')
  end
end
