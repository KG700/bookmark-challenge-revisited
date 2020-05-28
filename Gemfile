# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'pg'
gem 'sinatra'

group :development, :test do
  gem "rubocop"
end

group :test do
  gem 'capybara'
  gem 'rspec'
end
