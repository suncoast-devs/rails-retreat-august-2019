require "test_helper"

class PlaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @play = create(:play)
    @game = @play.game

    sign_in
  end

  test "should create game play" do
    assert_difference("@game.plays.count") do
      post game_plays_url(@game), params: {
                                    play: {
                                      note: "Interesting dice drafting mechanic",
                                      played_on: 2.weeks.ago,
                                    },
                                  }
    end

    assert_redirected_to game_url(@game)
  end

  test "should destroy a play" do
    assert_difference("@game.plays.count", -1) do
      delete game_play_url(@game, @play)
    end

    assert_redirected_to game_url(@game)
  end
end
