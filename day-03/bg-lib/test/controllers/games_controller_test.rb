require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = create(:game)
    @new_game = build(:game)
  end

  test "should get index" do
    get games_url
    assert_response :success
  end

  test "should get new" do
    get new_game_url
    assert_response :success
  end

  test "should create game" do
    assert_difference("Game.count") do
      post games_url, params: {
                        game: {
                          artist: @new_game.artist,
                          designer: @new_game.designer,
                          max_players: @new_game.max_players,
                          min_players: @new_game.min_players,
                          play_time: @new_game.play_time,
                          publisher: @new_game.publisher,
                          title: @new_game.title,
                          year: @new_game.year,
                        },
                      }
    end

    assert_redirected_to game_url(Game.last)
  end

  test "should show game" do
    get game_url(@game)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_url(@game)
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game),
          params: {
            game: {
              artist: @game.artist,
              designer: @game.designer,
              max_players: @game.max_players,
              min_players: @game.min_players,
              play_time: @game.play_time,
              publisher: @game.publisher,
              title: @game.title,
              year: @game.year,
            },
          }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference("Game.count", -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
end
