source 'https://rubygems.org'

gem 'rails', github: 'rails/rails'
gem 'sprockets-rails', github: 'rails/sprockets-rails'
gem 'sprockets', github: 'rails/sprockets'
gem 'sass-rails', github: 'rails/sass-rails'
gem 'arel', github: 'rails/arel'
gem 'rack', github: 'rack/rack'

gem 'sqlite3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', github: 'rails/coffee-rails'
gem 'jquery-rails'
gem 'turbolinks', github: 'rails/turbolinks'
# gem 'bcrypt', '~> 3.1.7'

group :production do
  gem 'puma'
end

group :development, :test do
  gem 'rack-livereload'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  %w[rspec rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, :git => "git://github.com/rspec/#{lib}.git", :branch => 'master'
  end
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'spring'
  gem 'listen', '~> 3.0.4'
  gem 'guard-rspec', github: 'guard/guard-rspec', require: false
  gem 'guard-livereload', '~> 2.4', require: false
  #gem 'quiet_assets' #broken with rails 5
end

group :test do
  gem 'capybara', github: 'jnicklas/capybara'
  gem 'shoulda-matchers'
end

