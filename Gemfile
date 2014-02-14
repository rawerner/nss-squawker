ruby '2.0.0'
#ruby-gemset=squawker
source 'https://rubygems.org'

gem 'carrierwave'
gem 'coffee-rails', '~> 4.0.0'
gem 'devise'
gem 'haml-rails'
gem 'jbuilder', '~> 1.2'
gem 'jquery-rails'
gem 'mini_magick'
gem 'pg'
gem 'rails', '4.0.2'
gem 'sass-rails', '~> 4.0.0'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
#*Note: You must have Imagemagick and MiniMagick installed to do image resizing. MiniMagick is a Ruby interface for Imagemagick which is a C program. This is why MiniMagick fails on 'bundle install' without Imagemagick installed.

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test, :development do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'fabrication'
  gem 'rspec'
  gem 'rspec-rails'
end

group :test do
  gem 'email_spec'
  gem 'launchy'
end
