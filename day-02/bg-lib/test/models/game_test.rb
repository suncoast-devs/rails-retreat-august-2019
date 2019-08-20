require "test_helper"

class GameTest < ActiveSupport::TestCase
  test "should require a title" do
    game = Game.new()
    refute game.valid?
    assert_not_nil game.errors[:title], "No validation error for title."
  end

  test "min players must be greater than zero" do
    game = Game.new(title: "Game of Life", min_players: 0)
    refute game.valid?
    assert_not_nil game.errors[:min_players], "No validation error for min_players."
  end

  test "should have unique titles" do
    game = Game.new({ title: games(:takenoko).title, min_players: 2 })
    refute game.valid?
    assert_not_nil game.errors[:title], "No validation error for title."
  end
end
