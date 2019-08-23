require "rails_helper"

RSpec.describe "User Authentication", :type => :system do
  before do
    @user = build(:user)
  end
  it "allows a user to register" do
    visit "/"

    click_on "Sign In"

    expect(page).to have_text("Sign up now!")
    click_on "Sign up now!"
    expect(page).to have_text("Sign Up")
    fill_in "Name", with: @user.name
    fill_in "Email", with: @user.email
    fill_in "Password", with: "hunter2"
    fill_in "Confirmation", with: "hunter2"

    click_on "Create Account"
    expect(page).to have_text("Welcome to Board Game Library, #{@user.name}.")
    click_on "Games"
    expect(page).to have_link("New Game")

    click_on "Sign Out"
    expect(page).to have_no_link("New Game")

  end
end
