require "test_helper"

class PlayTest < ActiveSupport::TestCase
  setup do
    @game = games(:takenoko)
  end

  test "a game should have plays" do
    play = Play.create(game: @game, played_on: 1.day.ago, note: "Very fun, I like pandas.")
    assert_includes @game.plays, play
  end
end
