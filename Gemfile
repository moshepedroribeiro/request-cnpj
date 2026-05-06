# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in request-cnpj.gemspec
gemspec

gem 'irb'
gem 'rake', '~> 13.0'
gem 'rest-client'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'bundler-audit', require: false
  gem 'capybara'
  gem 'capybara-lockstep'
  gem 'capybara-screenshot', require: false
  gem 'debug', platforms: %i[mri windows]
  gem 'dotenv-rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-conductor'
  gem 'rspec-rails'
  gem 'rswag-specs'
  gem 'sinatra-contrib'
  gem 'webmock', require: 'webmock/rspec'
end

group :development do
  gem 'brakeman', require: false
  gem 'rerun'
  gem 'rubocop', require: false
  gem 'rubocop-capybara', require: false
  gem 'rubocop-factory_bot', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rspec_rails', require: false
  gem 'web-console'
end

group :test do
  gem 'factory_bot_rails'
end
