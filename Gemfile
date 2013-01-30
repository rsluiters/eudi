source 'https://rubygems.org'

gem 'rails', '3.2.11'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem "therubyracer"
  gem 'jquery-rails'
  gem "less-rails" 
  gem 'twitter-bootstrap-rails'

  gem 'uglifier', '>= 1.0.3'
end

gem 'yaml_db'
#gem 'pdf-writer' #use wickedpdf


group :development do
  gem 'bullet'
  gem 'better_errors'
  gem 'binding_of_caller'#For bettererrors
  gem 'meta_request'#For RailsPanel in Chrome
end  

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'simplecov', :require => false, :group => :test
end
group :production do
    gem "pg"
end
gem 'bluecloth'
gem 'bcrypt-ruby', '~> 3.0.0' # To use ActiveModel has_secure_password

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
