source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'bootsnap',    '~> 1.4.0', require: false
gem 'faker',       '~> 2.13.0'
gem 'haml',        '~> 5.1.0'
gem 'haml-rails',  '~> 2.0.0'
gem 'jbuilder',    '~> 2.10.0'
gem 'pg',          '~> 1.2.0'
gem 'puma',        '~> 4.3.0'
gem 'rails',       '6.0.3.2' # Upgrade in yarn when upgrading
gem 'sass-rails',  '~> 6.0.0'
gem 'turbolinks',  '~> 5.2.0'
gem 'webpacker',   '5.2.1' # Upgrade in yarn when upgrading

group :development, :test do
  gem 'byebug', '~> 11.1.0', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'haml_lint',             require: false
  gem 'listen',                '~> 3.2.0'
  gem 'rubocop',               require: false
  gem 'rubocop-rails',         require: false
  gem 'spring',                '~> 2.1.0'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'
end

group :test do
  gem 'capybara',                 '~> 3.33.0'
  gem 'minitest',                 '~> 5.14.0'
  gem 'minitest-reporters',       '~> 1.4.0'
  gem 'rails-controller-testing', '~> 1.0.0'
  gem 'selenium-webdriver',       '~> 3.142.0'
  gem 'webdrivers',               '~> 4.4.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
