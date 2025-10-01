# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.6'

gem 'bootsnap', '~> 1.9.1', require: false
gem 'jbuilder', '~> 2.11'
gem 'pg', '~> 1.5'
gem 'puma', '~> 5.5'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'sass-rails', '~> 6.0'
gem 'turbolinks', '~> 5.2'
gem 'webpacker', '~> 5.4'

# not default
gem 'kaminari'
gem 'meta-tags'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection'
gem 'slim-rails'

group :production do
  gem 'aws-sdk-s3', require: false
end

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # not default
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '~> 3.7'
  gem 'rack-mini-profiler', '~> 2.3'
  gem 'slim_lint'
  gem 'spring'
  gem 'web-console', '~> 4.1'

  # not default
  gem 'rubocop-fjord', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'capybara', '~> 3.35'
  gem 'selenium-webdriver', '~> 3.142'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
