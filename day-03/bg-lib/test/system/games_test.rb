require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = create(:game)
    @new_game = build(:game)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "creating a Game" do
    visit games_url
    click_on "New Game"

    fill_in "Artist", with: @new_game.artist
    fill_in "Designer", with: @new_game.designer
    fill_in "Description", with: @new_game.description
    fill_in "Max players", with: @new_game.max_players
    fill_in "Min players", with: @new_game.min_players
    fill_in "Play time", with: @new_game.play_time
    fill_in "Publisher", with: @new_game.publisher
    fill_in "Title", with: @new_game.title
    fill_in "Year", with: @new_game.year
    click_on "Create Game"

    assert_text "#{@new_game.title} was successfully created"
  end

  test "updating a Game" do
    visit game_url(@game)
    click_on "Edit", match: :first

    fill_in "Artist", with: @game.artist
    fill_in "Designer", with: @game.designer
    fill_in "Max players", with: @game.max_players
    fill_in "Min players", with: @game.min_players
    fill_in "Play time", with: @game.play_time
    fill_in "Publisher", with: @game.publisher
    fill_in "Title", with: @game.title
    fill_in "Year", with: @game.year
    click_on "Update Game"

    assert_text "#{@game.title} was successfully updated"
  end

  test "destroying a Game" do
    visit game_url(@game)
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "#{@game.title} was successfully destroyed"
  end
end
