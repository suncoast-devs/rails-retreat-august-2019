require "rails_helper"

RSpec.describe "User Authentication", :type => :system do
  it "allows a user to register" do
    visit "/"

    click_on "Sign In"

    expect(page).to have_text("Sign up now!")
  end
end
