# This file is copied to spec/ when you run 'rails generate rspec:install'
# require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
# require 'rack_session_access/capybara'
require 'pry'
require 'pry-nav'
require 'pry-rails'
# Add additional requires below this line. Rails is not loaded until this point!
require 'rspec'
# require 'hashie'
include ActionView::Helpers::SanitizeHelper

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.include Rails.application.routes.url_helpers
#   config.include FactoryGirl::Syntax::Methods
end

Dir[Rails.root.join('spec/support/**/*.rb')].each { |file| require file }
