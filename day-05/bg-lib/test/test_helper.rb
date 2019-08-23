require "simplecov"
require "rspec"
SimpleCov.start "rails"

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

Rails.application.eager_load!

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
end
