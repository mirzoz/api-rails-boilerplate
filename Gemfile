source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem 'rails', '~> 6.1.3.1', '>= 6.1.3.1'
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 4.1"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Active Model has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use Active Storage variant
# gem "image_processing", "~> 1.2"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors", "~> 1.1"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "devise", "~> 4.7"

gem "devise-jwt", "~> 0.6.0"

gem "rspec-rails", "~> 4.0"

gem "acts_as_tenant", "~> 0.4.4"

gem 'active_model_serializers', '~> 0.10.0'

gem 'ams_lazy_relationships', '0.3.0'

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry"
  gem "dotenv-rails", "~> 2.7.0"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rubocop", "~> 0.81.0"
  gem "brakeman"
end

group :test do
  gem "factory_bot_rails"
  gem "capybara"
  gem "guard-rspec"
  gem "ffaker"
  gem "database_cleaner"
  gem 'shoulda-matchers', '~> 4.0'
end
