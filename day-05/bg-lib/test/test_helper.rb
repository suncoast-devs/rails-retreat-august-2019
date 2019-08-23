require "simplecov"
require "rspec"
SimpleCov.start "rails"

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

Rails.application.eager_load!

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods

  def sign_in
    user = create(:user)

    if respond_to? :visit
      visit login_url

      fill_in "Email", with: user.email
      fill_in "Password", with: "hunter2"

      click_button "Sign In"
    else
      post login_url, params: { session: { email: user.email, password: "hunter2" } }
      follow_redirect!
    end
  end
end
