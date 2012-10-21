source 'https://rubygems.org'

gem 'rails', '3.2.0'

# gem 'capistrano' # Deploy with Capistrano

gem 'unicorn' # Use unicorn as the web server
gem 'pg'

gem 'jbuilder' # To use Jbuilder templates for JSON
gem 'jquery-rails'
gem 'rails_config' # App settings (API keys, etc.)

gem 'devise' # Authentication
gem 'omniauth-facebook'

gem 'annotate'

group :assets do
  gem 'less-rails-bootstrap'

  gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'foreman'
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"

  gem "factory_girl_rails"

  gem 'ruby-debug19', :require => 'ruby-debug' # To use debugger
end
