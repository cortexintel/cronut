source 'https://rubygems.org'

ruby '2.1.3'

gem 'rails', '~> 3.2.19'

gem 'activerecord-postgresql-adapter'
gem 'airbrake'
gem 'pg'
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
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
  gem 'timecop'
end

group :production do
  gem 'rails_12factor'
  gem 'rails_version'
end
