require "test_helper"

class CreateGameAndLogPlayTest < ActionDispatch::IntegrationTest
  setup do
    sign_in
  end

  test "can create a new game" do
    get "/games/new"
    assert_response :success

    post "/games", params: { game: {
                     title: "Dale of Merchants",
                     year: "2015",
                     designer: "Sami Laakso",
                     artist: "Sami Laakso",
                     description: "It is an age of great discoveries. New and wonderful items find their ways into the hands of the greatest merchants. And if there ever is a place those traders love, it is the town of Dale.\n\nThere’s an extraordinary guild in the Dale founded by the greatest merchants. The tricky part is getting the membership since one must win the annual trading competition to be invited to the guild.\n\nNotable animalfolk merchants from all over the world have gathered in the town to take part in the event. Everyone has only one goal in mind – to be celebrated as the winner and the newest member of the legendary guild.\n\nIn Dale of Merchants, players take the roles of those participating merchants learning new techniques, trading goods, and managing their stock. The player who first manages to complete their astounding merchant stall wins the game and gets access to the guild!",
                     min_players: 2,
                     max_players: 3,
                     min_age: 8,
                     play_time: 30,
                   } }
    assert_response :redirect
    follow_redirect!

    assert_select ".message", "Dale of Merchants was successfully created."

    post "/games/#{Game.last.id}/plays", params: {
                                           play: {
                                             played_on: 1.day.ago,
                                             note: "A great deckbuilding game.",
                                           },
                                         }
    assert_response :redirect
    follow_redirect!

    assert_select ".message", "Logged a play for Dale of Merchants"
    assert_select "td", "A great deckbuilding game."
  end
end
