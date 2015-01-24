source 'https://rubygems.org'

ruby '2.1.3'

gem 'delayed_job_active_record'
gem 'email_validator'
gem 'geocoder'
gem 'jbuilder'
gem 'oj'
gem 'rack-timeout'
gem 'rails'
gem 'recipient_interceptor'
gem 'unicorn'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bcrypt'
gem 'bootstrap-sass',       '3.2.0.0'
gem 'faker',                '1.4.2'
gem 'carrierwave',             '0.10.0'
gem 'mini_magick',             '3.8.0'
gem 'fog',                     '1.23.0'
gem 'will_paginate',           '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'
gem "font-awesome-rails"
gem 'annotate', '~> 2.6.5'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'sqlite3'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'byebug',             '3.4.0'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'webmock'
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :staging, :production do
  gem 'rails_12factor'
end

group :production do
  gem 'pg'
end