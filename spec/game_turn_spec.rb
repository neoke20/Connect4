require 'spec_helper'

describe GameTurn do
  let(:board) { Board.new }
  let(:player) { Player.new('o') }
  let(:row_index) { 0 }
  let(:col_index) { 0 }
  let(:turn) { GameTurn.new(board, player, row_index, col_index) }

  it "has a board" do
    expect(turn.board).to eq(board)
  end
  it "has a col index" do
    expect(turn.col_index).to eq(col_index)
  end
  it "has a row index" do
    expect(turn.row_index).to eq(row_index)
  end

  it "has a player" do
    expect(turn.player).to eq(player)
  end

  it "has a win if 4 pieces of the same player are found on the same row"
  it "does not have a win if a player interrupts the row"
end
