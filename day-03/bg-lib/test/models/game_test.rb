require "test_helper"

class GameTest < ActiveSupport::TestCase
  test "should require a title" do
    game = build(:game, :untitled)
    refute game.valid?
    assert_not_nil game.errors[:title], "No validation error for title."
  end

  test "min players must be greater than zero" do
    game = build(:game, :zero_players)
    refute game.valid?
    assert_not_nil game.errors[:min_players], "No validation error for min_players."
  end

  test "should have unique titles" do
    create(:game, title: "Wingspan")
    game = build(:game, title: "Wingspan")
    refute game.valid?
    assert_not_nil game.errors[:title], "No validation error for title."
  end

  test "should require a description" do
    game = build(:game, description: "")
    refute game.valid?
    assert_not_nil game.errors[:description], "No validation error for description."
  end

  test "should require a minimum age" do
    game = build(:game, min_age: "")
    refute game.valid?
    assert_not_nil game.errors[:min_age], "No validation error for minimum age."
  end
end
