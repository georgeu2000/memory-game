# ENV
ENV[ 'RACK_ENV' ] = 'test'


# Gems
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'capybara'
require 'selenium/webdriver'


# Helpers
require './spec/support/integration_helpers'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.asset_host = "http://localhost:3000"

Mongoid.logger.level = Logger::ERROR

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL
  config.include FactoryBot::Syntax::Methods
  
  config.filter_run_including focus: true
  config.run_all_when_everything_filtered = true
  config.infer_spec_type_from_file_location!

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.backtrace_exclusion_patterns = [
    /gems/
  ]

  config.before(:each) do
  end

  config.before(:each, :js) do
  end
end


