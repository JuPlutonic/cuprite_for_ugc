# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# dsl to make driving browsers easy
gem 'capybara', '~> 3'

# Headless Chrome driver for Capybara (https://github.com/machinio/cuprite)
gem 'cuprite'

# The wonderful RSpec testing framework
gem 'rspec', '~> 3.8'

# used for generating xml test result that jenkins/CI integration need
gem 'rspec_junit_formatter', '~> 0.2'

# for driving browsers
gem 'selenium-webdriver', '~> 3'

# Used to manage configuration (tcfg.yml)
# and support execution against different environments
gem 'tcfg', '~> 0.2'

# gems in development group are not needed for running tests
# These gems are used when writing tests to help keep code high quality
group :development do
  # pry is am improved irb, a better REPL
  # it is useful for many debugging scenarios
  gem 'pry'

  # electing to use rdoc over yard for documentation here, because it
  # processes the dsl files by default while yard does not
  gem 'rdoc'

  # rubocop is LINT for ruby.  It analyzes your code for common ruby mistakes,
  # and also makes suggestions for style
  gem 'rubocop'
end

group :test do
  # Extracting `assigns` and `assert_template` from ActionDispatch.
  # (https://github.com/rails/rails-controller-testing)
  gem 'rails-controller-testing'
  # Making tests easy on the fingers and eyes (https://matchers.shoulda.io/)
  gem 'shoulda-matchers', '4.0.0.rc1'
end