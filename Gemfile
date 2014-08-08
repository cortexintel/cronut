source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'activerecord-postgresql-adapter'

gem 'pg', '= 0.18.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '= 4.0.3'
  gem 'coffee-rails', '= 4.0.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '= 2.5.0'
end

gem 'jquery-rails'

gem 'rufus-scheduler'
gem 'clockwork'
gem 'pagerduty'

group :development, :test do
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'rspec-activemodel-mocks'
  gem 'pry'
  gem 'sqlite3'
  gem 'timecop'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :production do
  gem 'rails_12factor'
end
