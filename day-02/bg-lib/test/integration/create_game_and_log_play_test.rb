require "test_helper"

class CreateGameAndLogPlayTest < ActionDispatch::IntegrationTest
  test "can create a new game" do
    get "/games/new"
    assert_response :success

    post "/games", params: { game: {
                     title: "Dale of Merchants",
                     year: "2015",
                     designer: "Sami Laakso",
                     artist: "Sami Laakso",
                     min_players: 2,
                     max_players: 3,
                     play_time: 30,
                   } }
    assert_response :redirect
    follow_redirect!

    assert_select "#notice", "Dale of Merchants was successfully created."

    post "/games/#{Game.last.id}/plays", params: {
                                           play: {
                                             played_on: 1.day.ago,
                                             note: "A great deckbuilding game.",
                                           },
                                         }
    assert_response :redirect
    follow_redirect!

    assert_select "#notice", "Logged a play for Dale of Merchants"
    assert_select "td", "A great deckbuilding game."
  end
end
