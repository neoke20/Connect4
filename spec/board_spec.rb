require 'spec_helper'
require_relative '../lib/board'

describe Board do
  it "can be initialized with 7 rows and columns by default" do
    board = Board.new
    expect(board.rows.size).to eq(7)
    expect(board.rows[0].size).to eq(7)
  end
  it "can be initialized with 10 rows and columns if I choose" do
    board = Board.new(10)
    expect(board.rows.size).to eq(10)
    expect(board.rows[0].size).to eq(10)
  end
  it "prints 5 rows and columns for a 5 rows board" do
    board = Board.new(5)
    board_printout =
    "_ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _\n"

    expect(board.print).to eq(board_printout)
  end
  it "prints 7 rows and columns for a 7 rows board" do
    board = Board.new
    board_printout =
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n"

    expect(board.print).to eq(board_printout)
  end

  it "allows a player to choose a start point" do
    board = Board.new
    board.add_turn('o', -1, 0)
    board_printout =
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "_ | _ | _ | _ | _ | _ | _\n" +
    "o | _ | _ | _ | _ | _ | _\n"
    expect(board.print).to eq(board_printout)
  end

  it "has empty spaces when created" do
    board = Board.new
    expect(board.empty_spaces?).to eq(true)
  end

  it "has no empty spaces when all slots taken" do
    board = Board.new
    7.times do |index|
      7.times do |col_index|
        board.add_turn('o', index, col_index)
      end
    end

    expect(board.empty_spaces?).to eq(false)
  end

end
