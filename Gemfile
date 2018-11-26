source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# front end
gem 'bootstrap', '~> 4.1.1'
gem "bootstrap_form", github: 'bootstrap-ruby/bootstrap_form', branch: "master"
# make error looks better
gem 'better_errors', '~> 2.1', '>= 2.1.1'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Post editor
gem 'ckeditor', github: 'galetahub/ckeditor'
# Use cancancan to authorize user
gem 'cancancan', '~> 2.0'
# Picture uploader, Active Records
gem 'carrierwave'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Create user account
gem 'devise'
# Multi-language support
gem 'devise-i18n'
gem 'i18n-timezones'
# icons
gem 'font-awesome-sass'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# jquery
gem 'jquery-ui-rails'
gem 'jquery-rails'
# Use ActiveStorage variant
gem 'mini_magick'
# Use postgresql as the database for Active Record
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use for admin panel
gem 'rails_admin', '~> 1.3'
# Multi-language support
gem 'rails-i18n', '~> 5.1' # For 5.0.x, 5.1.x and 5.2.x
# Use ransack to search objects
gem 'ransack', github: 'activerecord-hackery/ransack'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Cut partial content
gem 'sanitize'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
