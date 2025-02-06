# frozen_string_literal: true

source "https://rubygems.org"

gem "bundler", ">= 2.5", "< 3.0"
gem "rake", ">= 13.0", "< 14.0"

group :development do
  gem "reek"
  gem "rubocop", require: false
  gem "rubocop-rake"
  gem "rubocop-rspec"
end

group :test do
  gem "rspec"
  gem "simplecov"
end

group :development, :test do
  gem "dotenv"
  gem "irb"
  gem "ostruct"
  gem "pry-byebug"
  gem "reline"
end
