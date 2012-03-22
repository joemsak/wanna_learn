require 'rubygems'
require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= "test"
  require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
  require 'cucumber/rails'
  require 'database_cleaner'
  require 'database_cleaner/cucumber'
  Capybara.default_selector = :css
  Cucumber::Rails::Database.javascript_strategy = :truncation
  DatabaseCleaner.strategy = :truncation
end

Spork.each_run do
  ActionController::Base.allow_rescue = false

  Before do
    DatabaseCleaner.start
  end

  After do
    DatabaseCleaner.clean
  end
end
