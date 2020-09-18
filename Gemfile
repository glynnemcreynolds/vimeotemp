source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '6.0.3.2' # Upgrade in yarn when upgrading
gem 'puma', '~> 4.1'
gem 'sass-rails', '~> 6.0'
gem 'webpacker', '5.1.1' # Upgrade in yarn when upgrading
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen',                 '~> 3.1.5'
  gem 'rubocop',                require: false
  gem 'rubocop-rails',          require: false
  gem 'spring',                 '~> 2.1.0'
  gem 'spring-watcher-listen',  '~> 2.0.1'
  gem 'web-console'
end

group :test do
  gem 'capybara',                 '~> 3.28'
  gem 'selenium-webdriver',       '~> 3.142'
  gem 'webdrivers',               '~> 4.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
