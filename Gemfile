source 'https://rubygems.org'

gem 'rails', '3.2.2'
gem 'haml-rails'
gem 'jquery-rails'
gem 'fancybox-rails'
gem 'pg'

# So that we can support and admin panel
gem 'devise'

# So that we can test the ActiveRecord i18n backend
gem 'i18n-active_record', git: 'git://github.com/svenfuchs/i18n-active_record.git',
  require: 'i18n/active_record'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-ui-rails'
  gem 'bootstrap-sass'
end

group :development, :test do
  gem 'guard-rspec'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'annotate'
end
